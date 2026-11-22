#!/usr/bin/env bash
# Package only the runtime files ("meat") of the Heirloom Tomatoes
# Content Patcher pack into a release ZIP under dist/.
#
# The ZIP contains a single top-level "[CP] Heirloom Tomatoes/" folder
# (ready to unzip into the game's Mods/ folder) with only:
#   manifest.json, content.json, assets/, i18n/
# Everything else (docs/, README, LICENSE, scripts/, CI config, the
# SMAPI-generated config.json, ...) is excluded by allowlist.
set -euo pipefail

repo_root="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
cd "$repo_root"

pack_name="[CP] Heirloom Tomatoes"
dist_dir="$repo_root/dist"

if ! command -v zip >/dev/null 2>&1; then
    echo "error: 'zip' is required but not found in PATH" >&2
    exit 1
fi

# Required runtime files — fail early rather than shipping a broken pack.
for required in manifest.json content.json assets i18n; do
    if [ ! -e "$required" ]; then
        echo "error: required runtime path missing: $required" >&2
        exit 1
    fi
done

version="$(sed -n 's/.*"Version"[[:space:]]*:[[:space:]]*"\([^"]*\)".*/\1/p' manifest.json | head -n 1)"
if [ -z "$version" ]; then
    echo "error: could not read Version from manifest.json" >&2
    exit 1
fi

# CI can append a beta or release-candidate suffix without changing
# the mod's manifest version.
package_version="${version}${PACKAGE_VERSION_SUFFIX:-}"
zip_path="$dist_dir/HeirloomTomatoes-${package_version}.zip"

staging="$(mktemp -d)"
trap 'rm -rf "$staging"' EXIT

pack_dir="$staging/$pack_name"
mkdir -p "$pack_dir"

cp manifest.json content.json "$pack_dir/"
cp -R assets i18n "$pack_dir/"

# Drop placeholders / OS noise that must not ship.
find "$pack_dir" -name '.gitkeep' -delete
find "$pack_dir" \( -name '.DS_Store' -o -name 'Thumbs.db' \) -delete

mkdir -p "$dist_dir"
rm -f "$zip_path"
(cd "$staging" && zip -r -X "$zip_path" "$pack_name" >/dev/null)

zip -T "$zip_path" >/dev/null

echo "Created $zip_path"
zip -sf "$zip_path"
