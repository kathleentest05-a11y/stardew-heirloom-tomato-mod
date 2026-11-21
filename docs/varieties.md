# Variety research and locked v1 list

Status: **Research record; v1 selection locked (author, 2026-11-21).**
Researched 2026-11-21 by one subagent per variety against the criteria
in [`docs/requirements.md`](requirements.md).

**Locked v1 variety list (8):** San Marzano + Amish Paste (paste),
Mortgage Lifter + Black Krim + Pineapple (beefsteak), Sungold +
Peacevine (cherry), and Green Zebra (saladette slicer). This locks
*which varieties are in v1*; it is not §9 approval. **No variety
recorded here is approved by this document, and none may be added to
`content.json` on the strength of it.** Each locked entry must still
complete its full requirements §9 checklist (outstanding items are
listed per entry and at the end of this file). All other researched
entries (Brandywine, Sweet 100, Kellogg's Breakfast, 4th of July) are
excluded and retained below for the record; an early OP slicer (e.g.
Stupice) is a post-v1/stretch candidate, not part of v1. Any addition
or substitution requires a new recorded author decision and a full
§3 → §9 pass. Note on terms: Sungold is a modern F1 hybrid (§3.4) and
Peacevine and Green Zebra are modern-bred open-pollinated varieties —
the locked list is a *variety* list, not eight heirlooms. Green Zebra
is retained in v1 with its recipe category decided (lean menu,
author, 2026-11-21): Caprese via beefsteak/slicing eligibility
(requirements §7.3), with a tentative second paste dish
(§7.7 Shakshuka) balancing the menu at two fresh + two cooked.

This file is the place requirements §9 anticipated ("a table per variety
in a future `docs/varieties.md` is fine"). Entries are deliberately
written as incomplete §9 checklists so the missing items are visible.

## Read this first: the formal legal searches are mostly outstanding

Requirements §3.2 item 2 requires a dated search of a trademark
register (e.g. USPTO) showing no live trademark covering seeds, plants,
or produce under the variety name. **That search could not be executed
in the research sessions:** USPTO Trademark Search
(`tmsearch.uspto.gov`, successor to TESS) returned only a JavaScript
shell to the research tools, and the USDA PVP certificate database was
likewise not directly queryable. Subagents used web-indexed mirrors of
USPTO records (Justia, TrademarkElite, Furm, Docket Alarm) and web
search instead, and said so in every report. Mirror evidence is **not**
a register clearance.

Consequences:

- Every "provisional pass" below means: §3.2 items 1, 3, and 4 pass on
  the evidence found, mirrors show no disqualifying tomato-seed mark,
  **and item 2 remains open** unless an entry records a completed
  formal search. A dated human USPTO register search
  (plus a USDA PVP certificate search) must be recorded in each entry
  before approval. If a formal search finds a live mark covering
  tomato seeds/plants/produce, the verdict flips to DOUBTFUL → exclude
  under §3.3.
- **Progress (2026-11-21):** USPTO trademark searches are complete
  and clear for **Mortgage Lifter, Black Krim, Green Zebra,
  Pineapple, Sungold (both spellings)** (author exports in
  `/home/kathleen/code/tm-research/`, inspected read-only; some
  contain the first 50 hits), and for **San Marzano** via delegated
  official USPTO TSDR + search-backend work (PASS; EUIPO/WIPO
  official name searches remain a narrow formal-confirmation item).
  **USDA PVP searches are complete and clear for all seven**
  pursued varieties via the official PVP Application Status Report
  (details in the San Marzano entry). **Brandywine** TSDR scoping
  completed 2026-11-21 and did **not** clear it — it stays
  DOUBTFUL → exclude (see its entry).
- Varieties marked **DOUBTFUL → exclude** have a specific identified
  doubt (not just the missing formal search) and stay out until that
  doubt is resolved in writing, per §3.3.
- Varieties marked **HARD-BLOCKED** fail on positive evidence and are
  not expected to be rescued by the formal search.

Method note: the §3 legal gate was researched first for every variety.
Data collection (§4/§5 inputs) was done **only** for varieties that
were not hard-blocked. Sources follow the §6 preference order
(extension/USDA, then seed-preservation organisations, then
established catalogues). All web sources were accessed 2026-11-21.
StardewDays uses `clamp(round(11 × DTM / 75), 9, 14)` (§4.2).
Indicative prices use `round5(60 × sqrt(WeightOz / 5) × StardewDays/11
× 1.20)` (§5.1, default premium, no scarcity case made for any
variety) and are **not** final — §8 balance checks have not been run.

## Summary

Locked v1 rows are San Marzano, Mortgage Lifter, Black Krim, Sungold,
Green Zebra, Pineapple, Peacevine, and Amish Paste. Brandywine,
Sweet 100, Kellogg's Breakfast, and 4th of July rows are
excluded/record-only.

| Variety | §3 verdict (tentative) | Type | DTM → Stardew | Weight (mid) | Recipe |
|---|---|---|---|---|---|
| [San Marzano](#san-marzano) | Provisional pass, conditions — USPTO PASS + PVP clear 2026-11-21; EUIPO/WIPO formal pending | Paste (plum) | 82d → 12 | 4.0 oz ⚠️ (chosen) | Bisque (+ Shakshuka §7.7 tent.) |
| [Mortgage Lifter](#mortgage-lifter) | Provisional pass — USPTO + PVP clear 2026-11-21 | Beefsteak | 83d → 12 | 24 oz ⚠️ | Caprese |
| [Black Krim](#black-krim) | Provisional pass — USPTO + PVP clear 2026-11-21 | Beefsteak | 80d → 12 | 12 oz ⚠️ | Caprese |
| [Sungold](#sungold--sun-gold) | Provisional pass, §3.4 hybrid — USPTO + PVP clear 2026-11-21 | Cherry (F1) | 60d → 9 | 0.56 oz ⚠️ | Cherry Salad |
| [Green Zebra](#green-zebra) | Provisional pass — USPTO + PVP clear 2026-11-21 | Saladette slicer | 76d → 11 | 4.0 oz | Caprese (slicing) |
| [Pineapple](#pineapple) | Provisional pass — USPTO (IC 031) + PVP clear 2026-11-21 | Beefsteak (bicolor) | 85d → 12 | 14–22 oz ⚠️ | Caprese |
| [Brandywine](#brandywine) | **Doubtful → exclude** — TSDR done 2026-11-21, did not clear; PVP clear | Beefsteak | 84d → 12 | 17 oz | Caprese |
| [Sweet 100](#sweet-100) | **Hard-blocked** | — not researched — | — | — | — |
| [Kellogg's Breakfast](#kelloggs-breakfast) | **Doubtful → exclude** | Beefsteak (record only) | ~85d → 12 | ~24 oz | Caprese |
| [4th of July](#4th-of-july--fourth-of-july) | **Doubtful → exclude** | — not researched — | — | — | — |
| [Peacevine](#peacevine-addition-researched-2026-11-21) | Provisional pass (modern OP) — USPTO + PVP clear 2026-11-21 | Cherry | 73d → 11 | 0.75 oz | Cherry Salad |
| [Amish Paste](#amish-paste-addition-researched-2026-11-21) | Provisional pass — USPTO + PVP clear 2026-11-21 | Paste (oxheart) | 82d → 12 | 9.0 oz ⚠️ | Bisque (+ Shakshuka §7.7 tent.) |

⚠️ = wide source spread flagged under §6.2; the §8 balance check must
be run at both ends of the range before §5 pricing is fixed.

Locked v1 composition (author, 2026-11-21): two pastes, three
beefsteaks, two cherries, and one saladette, spanning 9–12 Stardew
days. All eight are indeterminate (no determinate model in v1) and
only Sungold converts below vanilla's 11 days (no early slicer in
v1). Lean menu (same date): Green Zebra joins Caprese as a slicing
type, so every locked variety has a settled dish, with tentative
§7.7 Shakshuka as a second cooked paste dish. Composition
discussion is collected in
[Assessment: keep, trim, add](#assessment-keep-trim-add) at the end.

---

## San Marzano

**Verdict: NOT hard-blocked (provisional, conditions below are part of
the verdict).** For the plain generic open-pollinated variety name
"San Marzano" only. USPTO formal search completed 2026-11-21
(PASS, §3.2.2 below) and USDA PVP is clear (below); EUIPO/WIPO
official name searches could not be executed browserless and
remain a narrow formal-confirmation item.

### §3 gate

- **§3.2.1 Generic use — pass, many times over.** Plain "San Marzano"
  with no ™/® at Territorial Seed, High Mowing Organic Seeds, Osborne
  Quality Seeds, OSC Seeds (Canada), Tomato Growers Supply, and True
  Leaf Market; WSU Clark County Extension lists 'San Marzano' in a
  plum-variety trial.
- **§3.2.2 USPTO — PASS; formal search executed 2026-11-21**
  (delegated subagent, official USPTO only). Method: TSDR API
  (`tmsearch.uspto.gov/tsdr-api-v1-0-0/tsdr-api?serialNumber=…`,
  HTTP 200 for all six known serials) plus the official search
  backend the UI itself calls (`POST
  tmsearch.uspto.gov/prod-stage-v1-0-0/tmsearch`, index
  `tmsearch-index-v2`, HTTP 200). Discovery results: expert
  `WM:"SAN MARZANO"` **28 hits, 0 live in IC 031**; live-only
  phrase search **16 live, IC 029/030/033 only**; live + IC 031 +
  phrase **0**; live MARZANO + goods "tomato seeds" **0**. Known
  records, full goods verified:
  - Serial 78835415 / Reg. 3210945 — **LIVE**, design (not standard
    character), Alanric Food Distributors, goods only **"IC 030:
    sauces"**, disclaimer **"SAN MARZANO"**, renewed 2026-11-03.
  - Serial 86933654 / Reg. 5027259 — **LIVE**, design, Alanric,
    goods only **"IC 029: Canned tomatoes"**, disclaimer **"SAN
    MARZANO"**, renewed 2026-07-14.
  - Serial 85581283 / Reg. 4386357 — **LIVE CERTIFICATION MARK**,
    design, Consorzio di Tutela, goods only certification
    **Class A: "Tomatoes and peeled tomatoes"** (not IC 031),
    disclaimer **"POMODORO S. MARZANO"**, renewed 2024-01-24.
  - Dead: 85581273 (certification, abandoned 2014), 76079508 /
    Reg. 2575335 and 77260438 / Reg. 3460905 (Simpson Imports,
    IC 029/030 canned/sauces, cancelled §8 2022/2019), each
    disclaiming SAN MARZANO.
  - **Corrections to earlier mirror summary:** a live *word-only*
    SAN MARZANO registration does exist — Serial 86495486 /
    Reg. 4749963, standard character (Supplemental), SAN MARZANO
    VINI S.P.A., **IC 033 alcoholic beverages only**, no
    disclaimer. Do not claim "no word-only mark exists" without
    the tomato-seeds/plants/produce scope. Live IC 031 fresh-
    produce marks use MARZANO only inside different composite
    names (Village Fresh VILLAGIO MARZANO family) — do not use
    "Villagio Marzano"; they do not claim bare "San Marzano".
  - **Literal-"produce" fork (author reading to record):** PASS
    treats §3.2.2 "produce" as fresh produce (IC 031), as applied
    to other varieties: the live canned-tomato (IC 029) and
    certification Class A rights are composite/design rights that
    expressly disclaim the words. If "produce" were read to
    include canned/peeled goods *regardless* of disclaimer/class,
    this would flip to DOUBTFUL under §3.3. Do not leave the
    adopted reading implicit.
- **§3.2.2 EUIPO/WIPO — no blocker found; official name searches
  NOT executed (2026-11-21, delegated subagent).** eSearch plus
  connection-reset/timeout, TMview JS shell + API WAF rejection,
  WIPO Global Brand Database ALTCHA captcha wall, Madrid Monitor
  JS search (record-by-number works). Mirror + by-number evidence:
  no live EU/IR mark claims plain SAN MARZANO (word) in Nice 31;
  the only Nice 31 SAN MARZANO-containing EUTM found ("Mini San
  Marzano", 010841773) expired 2023-02-26; live rights are
  figurative/composite Nice 29/30 processed goods (e.g. Madrid
  IR 1442111 "La San Marzano di A. Romano", verified by number on
  Madrid Monitor, Nice 29/30 only), unrelated-goods figurative
  EUTM 018966425 (Nice 18/21/25), or wine (33). EUTM 018893642
  "San Marzano No. 2" mirror records conflict (opposed 29/30 vs
  registered 18/25) and must be re-confirmed on EUIPO; no version
  shows Nice 31. A dated human EUIPO/TMview + WIPO GBD search is
  still needed to close this formally — now a narrow confirmation
  against those numbers, not an open-ended doubt.
- **EU PDO — not a trademark/PVP, but binding on naming; scope
  confirmed from official texts 2026-11-21** (eAmbrosia/GIview
  themselves returned JS shells browserless; EUR-Lex + Italian
  Ministry specification used). Current name "Pomodoro San Marzano
  dell'Agro Sarnese-Nocerino", EU file PDO-IT-01524, product class
  1.6, registered 1996-07-02. Specification Art. 2 reserves the PDO
  for **peeled tomatoes** from **S. Marzano 2 and/or KIROS (ex
  Cirio 3)** (plus compliant improved lines), grown *and*
  industrially processed (peeling/canning/sterilising, "SM"
  container mark) in the listed Agro Sarnese-Nocerino
  municipalities (Campania: Salerno/Avellino/Naples provinces).
  Fresh fruit is defined only as peeling input (60–80 mm, axial
  ratio ≥2.2±0.2). **The PDO does not cover tomato seed, live
  plants, or fresh tomatoes sold as such, and does not reserve
  bare "San Marzano" as a variety name.** Avoid exactly: the full
  PDO name in either spelling, "DOP/PDO", the EU PDO roundel, the
  Consorzio seal/number, "SM" as a certification cue, and
  "certified/authentic" language. Sources: Commission Regulation
  (EU) 1164/2010 and OJ C 138/2019 amendment (EUR-Lex); Ministry
  specification hosted by the Consorzio.
- **PVP — PASS; formal searches 2026-11-21 (three official USDA
  routes, delegated subagent + parent corroboration).** (1) CMS
  (`apps.ams.usda.gov/cms/`, scripted postback; all 195 Tomato
  certificate rows harvested; substring search): "returned no
  records" for San Marzano/Marzano. (2) POD API
  (`pvpo.scinet.usda.gov` → `pvpocomingsoon.scinet.usda.gov/api/amsapi`):
  exact searches + `cropKind=Tomato` browse (207 distinct tomato
  varieties; POD complete only from 2018, hence routes 1+3):
  none. (3) *US PVP Application Status Report* spreadsheet
  (ams.usda.gov, Last-Modified 2026-11-04; 18,362 applications
  incl. 230 tomato; SHA-256
  `d68aa1326103c22179e5d2e29480801075e005ba929da0f33e26555281fc81ee`):
  **0 hits** for "san marzano"/"marzano" in any column. Same
  three-route search cleared every pursued variety (per-entry
  lines cite this anchor). Corroborates Osborne "PVP: N".
  **Utility-patent prong NOT searched** by any route — remains
  open under §3.1 for all varieties; no evidence of one was seen
  in variety research, but do not record it as cleared.
- **§3.2.3 Exclusive claim — pass for the generic form.** Strain-level
  caveats only (see usable form).
- **§3.2.4 Heirloom/OP — pass.** Territorial (Heirloom + OP), High
  Mowing, Osborne, OSC all list it OP/heirloom. USDA GRIN holds
  historic accessions (search-level).

**Exactly which form is usable:**

- ✅ In-game name "San Marzano", generic OP plum/paste, fresh
  description. A plain historical note ("an old Italian sauce tomato")
  is generic catalogue language; avoid "authentic/certified/DOP".
- ❌ The PDO name/designs, Alanric/Cento brand designs or names.
- ❌ As the represented strain, and no data from: San Marzano II
  (Johnny's markets it as "Exclusive! ... selected by tomato breeder
  Emily Rose Haga"), S. Marzano 2 *as a PDO claim*, KIROS/Cirio 3,
  San Marzano 168 (numbered hybrid), Pozzano F1 / Andiamo Hybrid
  ("San Marzano type" F1s), Lampadina/Lungo, Redorta. F1s sold under
  the type name must not be confused with the OP variety.

### Data (generic OP form only)

- **Type/habit/leaf:** plum/paste; indeterminate (unanimous); regular
  leaf at reference-work level only (Tatiana's TOMATOBase) — low
  confidence, not a formula input, notable only as "not potato-leaf".
- **DTM:** Territorial 78 (unstated); High Mowing 80 from transplant;
  Osborne 80 from transplant; OSC 80; Tomato Growers 80; WSU trial 80;
  True Leaf 85 from transplant. **Range 78–85, midpoint 82.**
  Johnny's San Marzano II (78d) excluded as strain-specific.
- **Weight ⚠️ WIDE-SPREAD FLAG.** High Mowing 4.0 oz; Osborne 4.0 oz;
  OSC "average 150 g" (5.3 oz); True Leaf 5–6 oz (its own text also
  says 4 oz — internally inconsistent). North-American catalogue
  range **4.0–6.0 oz, midpoint 5.0 oz**, point estimates clustering
  at 4.0 oz. But the WSU 2004 trial *measured* 1.45 oz average, and
  the PDO spec/traditional European listings run ~1.8–4.2 oz: US
  catalogue strains are selected markedly larger than the traditional
  Italian fruit. Pooled range 1.45–6.0 oz. **Weight decision
  (author, 2026-11-21): the mod models a ~4.0 oz typical fruit** —
  the point where the North-American catalogue point estimates
  cluster (High Mowing, Osborne) and the top of the traditional
  range meet — in preference to the 5.0 oz pooled midpoint, which
  leans on the larger 5–6 oz US catalogue listings, and to the
  1.45 oz single-trial average as a typical weight. Author
  experience (family-grown one season, not a §6 formula source):
  ~4 oz "seems to track". §8 must still be run at both pooled ends
  (1.45 and 6.0 oz) per §6.2.
- **Conversions (indicative):** StardewDays 12; indeterminate → 4-day
  regrow (§4.3). SellPrice ≈ **70g at the chosen 4.0 oz** (SeedPrice
  55g); pooled range ends for the §8 check: ≈ 40g at 1.45 oz,
  ≈ 85g at 6.0 oz — every value below 100g, so no raw-fruit Loved
  gifts at any end (gift-tastes doc, Part II rule 2).
- **Recipe:** paste → Heirloom Tomato Bisque (§7.6) + tentative
  Heirloom Tomato Shakshuka (§7.7).
- **Sprite:** uniform bright/rosy red, no stripes/blush; green
  shoulders on *unripe* fruit only (crop texture), clean red at
  harvest. Signature is shape: strongly elongated plum (length
  ≥2.2× width), "rectangular pear-shaped" (Tomato Growers), slightly
  flattened sides/angular cross-section, smooth — **no ribbing**.
  Vertical ~2:1 silhouette with tapered blossom end reads at 16×16
  without colour. Crop: clustered elongated fruit.

**Outstanding:** dated human EUIPO/TMview + WIPO Global Brand
Database name search (narrow confirmation incl. EUTM 018893642);
author recording of the literal-"produce" reading adopted in
§3.2.2; §8 check at both pooled weight ends; description must
avoid PDO/company/strain names. Weight: decided 2026-11-21
(~4.0 oz typical, above). USPTO formal search: **done
2026-11-21, PASS** (above).

Sources include:
[Territorial](https://territorialseed.com/products/tomato-san-marzano),
[High Mowing](https://www.highmowingseeds.com/organic-non-gmo-san-marzano-paste-tomato-c.html),
[Osborne](https://www.osborneseed.com/products/san-marzano-organic-tomato-seeds),
[OSC](https://www.oscseeds.com/product/san-marzano-organic-tomato-seeds-4201/),
[True Leaf](https://trueleafmarket.com/products/tomato-seeds-san-marzano-indeterminate),
[WSU trial (PDF)](https://varietytrials.eorganic.info/sites/eorg-variety7/files/WATomatoTrial.pdf),
[EU PDO spec (PDF)](https://eur-lex.europa.eu/LexUriServ/LexUriServ.do?uri=OJ:C:2010:073:0042:0048:EN:PDF),
trademark mirrors (Furm/Justia).

---

## Mortgage Lifter

**Verdict: NOT hard-blocked (provisional — USPTO + USDA PVP
searches completed 2026-11-21, both clear; only §8/balance work
remains before §9 sign-off).**
Plain "Mortgage Lifter"
in its widely sold Radiator Charlie (M.C. Byles) form. In-game name:
plain **Mortgage Lifter** ("Radiator Charlie" is the historical
breeder's nickname, used generically, not a living company's brand).

### §3 gate

- **§3.2.1 — pass.** Generic, no ™/®, at Cornell Cooperative
  Extension's Vegetable Varieties for Gardeners, Burpee ("HEIRLOOM"),
  Baker Creek, Victory Seed, Hudson Valley Seed. WVU Extension lists
  plain "Mortgage Lifter" as a West Virginia heirloom beefsteak
  (search-indexed text; page 403'd on direct fetch — supporting only).
- **§3.2.2 — PASS; formal search inspected, 2026-11-21.**
  Register: USPTO Trademark Search. Evidence: export file
  `/home/kathleen/code/tm-research/mortgagelifter.xlsx` (originally
  `tmSearchResults2026-11-21.xlsx`; outside this repo; SHA-256
  `d5bafa241d47bf88e6611e88673f59fab4b52d53b61219199a21cc44864a9629`),
  workbook created 2026-11-21T17:23:51Z. Sheet `tmSearch` records
  search term **"Mortgage Lifter"** and "Search results from 1 to
  15" (all 15 hits, live and dead, unfiltered by class). Result:
  **no Live exact "MORTGAGE LIFTER" mark, and no hit — live or
  dead — covering tomato seeds, live tomato plants, or fresh
  tomatoes.** The three tomato-relevant hits are all **Dead**
  Beekman 1802 food-product marks: Serial 86308118 MORTGAGE LIFTER
  (IC 030 staple foods, no registration); Serial 86415645 / Reg.
  4743298 BEEKMAN 1802 "MORTGAGE LIFTER" (IC 029, "Canned, cooked or
  otherwise processed tomatoes", registered 2015-05-26, now Dead);
  Serial 86415614 / Reg. 4767709 (IC 030, "Tomato-based sauces",
  registered 2015-07-07, now Dead). The seven Live hits are
  non-exact and non-tomato (LIFTER whey snacks, IC 029; SPIRIT
  LIFTER coffee, IC 030; WEIGHT LIFTER animal feed, IC 031 —
  an IC 031 hit, but neither the name nor goods is tomato-related;
  federal mortgage-association names; MORTGAGE APPLE CAKES cakes,
  IC 030). This confirms the earlier mirror evidence and answers
  the historical caution for federal marks as of 2026-11-21:
  whatever William Estler is reported to have registered in 1932
  (per Mother Earth News), no live federal mark covers this use.
  This closes the **trademark** item; PVP is cleared below.
- **PVP — PASS; formal search 2026-11-21.** Official USDA PVP
  Application Status Report (see San Marzano entry for file/hash):
  **0 hits** for "mortgage lifter"/"mortgage"/"radiator
  charlie"/"charlie". Consistent with 1930s–40s origin predating
  the PVP Act — now a database result, not just inference.
- **§3.2.3 — pass.** Southern Exposure Seed Exchange was the 1985
  commercial release channel for Byles seed (via founder Jeff
  McCormack), not an exclusive owner.
- **§3.2.4 — pass.** WVU Extension and Cornell (tier 1); Victory
  "Open Pollinated", Logan WV, 1940s; Burpee "HEIRLOOM ... Developed
  in the 1930s". Consistent origin story: Byles crossed large
  varieties in Logan, WV in the 1930s and sold $1 plants to pay off
  a $6,000 mortgage.
- **Strain care (§3.3) — important.** "Mortgage Lifter" is not one
  genotype: Estler's 1922 Barboursville tomato (the 1932-registration
  one) and Byles' 1930s Logan tomato are distinct cultivars sharing
  the name. Modern unqualified listings that tell the Byles story
  describe the Byles form, and **all data below is Byles/Radiator
  Charlie data only**. Do not use data from named derivative strains:
  Estler's, Halladay's (Seed Savers' Kentucky family selection),
  Carter's, Cartwright's, McGarity's, Mullens', Rieger's, Pale Leaf,
  Red Mortgage Lifter / Mortgage Lifter VFN (SESE improved red
  selection), or bi-color/yellow strains.

### Data

- **Type/habit/leaf:** beefsteak/slicing; indeterminate (six sources,
  unanimous); regular leaf (Victory) — nothing notable.
- **DTM:** Cornell 80–85 (unstated); WVU 80; Burpee 80 ("from when
  the plant is actively growing in the garden" ≈ transplant);
  Baker Creek 85; Victory 85. **Range 80–85, midpoint ~83.** Narrow.
- **Weight ⚠️ WIDE-SPREAD FLAG — worst in the candidate set.**
  Formula-ready typical range **16–32 oz (1–2 lb), midpoint 24 oz**
  (Baker Creek range; corroborated by Burpee's structured "24 oz"
  field). But marketing maxima: Cornell "2½-pound or more" (≥40 oz),
  Burpee prose "average 2½ lb ... up to 4 lb" contradicts its own
  field, Victory only "some reaching over a pound". Counting maxima
  gives 16–40+ oz. Price/balance on 24 oz and run §8 at 16 and
  40 oz. **Author experience (2026-11-21, family-grown, not a §6
  formula source):** Mortgage Lifter "can easily get to 2–3 lb"
  (32–48 oz) — corroborates the catalogue high end as real garden
  performance, not just marketing. Extend the §8 high-end check
  to 48 oz; note the §5 formula hits the 180g clamp well before
  that (≈200g unclamped at 32 oz), so price stops distinguishing
  size at the top end.
- **Conversions (indicative):** StardewDays 12; 4-day regrow.
  SellPrice ≈ 170g at 24 oz (SeedPrice 135g); at 40 oz the formula
  exceeds the 180g clamp — §8 both-ends check is material. Above
  100g either way: raw-fruit Loved by Leah/Maru/Demetrius, and Gus
  (beefsteak), per gift-tastes Part II rule 2.
- **Recipe:** beefsteak → Heirloom Caprese (§7.3).
- **Sprite:** pink to pinkish-red — visibly pinker, less scarlet than
  vanilla; **no** stripes/blush/green shoulders described for the
  Byles form (do not invent any; red and bi-color are excluded
  strains). Large, slightly flattened oblate, smooth. Distinguishers
  beyond colour: exaggerated scale (full 16 px width, ~5× the
  vanilla 5 oz reference weight), flattened wider-than-tall
  silhouette, subtle shoulder lobing only (no source supports deep
  ribbing), small stem scar on a broad flat top.

**Outstanding:** §8 at both weight ends.
Trademark + PVP searches: done 2026-11-21 (trademark export held at
`/home/kathleen/code/tm-research/mortgagelifter.xlsx`, outside this
repo — archive a copy in-repo if long-term auditability is wanted).

Sources include:
[Cornell CCE](http://vegvariety.cce.cornell.edu/main/detail.php?variety_id=1691&filterBy=0),
[WVU Extension](https://extension.wvu.edu/lawn-gardening-pests/gardening/wv-garden-guide/growing-tomatoes-in-west-virginia),
[Burpee](https://www.burpee.com/tomato-mortgage-lifter-prod000998.html),
[Baker Creek](https://www.rareseeds.com/products/tomato-mortgage-lifter),
[Victory](https://victoryseeds.com/products/radiator-charlies-mortgage-lifter-tomato),
[Hudson Valley](https://hudsonvalleyseed.com/collections/certified-organic-vegetables/products/mortgage-lifter-tomato),
[Mother Earth News](https://www.motherearthnews.com/organic-gardening/heirloom-tomatoes-ze0z1310zpit/).

---

## Black Krim

**Verdict: NOT hard-blocked (provisional — USPTO + USDA PVP
searches completed 2026-11-21, both clear; only §8 range-end work
remains).** No evidence found that triggers HARD-BLOCKED or
DOUBTFUL.

### §3 gate

- **§3.2.1 — pass.** Generic, no ™/®, at Cornell CCE ("Open
  pollinated. Russian heirloom", listing five separate seed sources),
  Johnny's Selected Seeds, Baker Creek, West Coast Seeds, Botanical
  Interests, Seed Savers Exchange.
- **§3.2.2 — PASS; formal search inspected, 2026-11-21.**
  Register: USPTO Trademark Search. Evidence: export file
  `/home/kathleen/code/tm-research/krim.xlsx` (outside this repo;
  SHA-256
  `bbdef498521a40fed9a75c25438f4065951ce314d2291a3f0904acb90e1a6e2d`),
  workbook created 2026-11-21T17:26:51Z. Sheet `tmSearch` records
  search term **"black krim"**, "Search results from 1 to 50"
  (17 Live / 33 Dead). Result: **no "BLACK KRIM" (or Crimea) mark
  at all in the exported hits, and nothing covering tomato seeds,
  live tomato plants, or fresh tomatoes** — every hit is a fuzzy
  "BLACK …" mark for other goods. Live IC 031 hits are BLACK
  BEAUTY (grass seed), BLACK GLOBE (table grapes), and BLACK GOLD
  (soil/fertiliser) — different names, different goods. Export
  limitation, recorded for honesty: the file holds the **first
  50** hits; an exact BLACK KRIM mark would rank at the top (cf.
  Green Zebra) and the author reports the search all clear. An
  exact-phrase + IC 031 re-run would make the exported record
  exhaustive if that is ever wanted. Earlier mirror evidence
  agreed (Justia exact-name: no results).
- **PVP — PASS; formal search 2026-11-21.** Official USDA PVP
  Application Status Report (see San Marzano entry): **0 hits**
  for "black krim"/"black crimea"/"crimea"; sole "krim" token hit
  is KRIMSON, a common bean (cert. 201100480) — unrelated.
- **§3.2.3 — pass.** Seed Savers is the documented US introduction
  route, not an exclusive owner.
- **§3.2.4 — pass.** Cornell: "Open pollinated. Russian heirloom."
  Seed Savers: "(Heirloom) ... Also called Black Crimea and
  introduced to Seed Savers Exchange by Lars Olov Rosenstrom of
  Sweden. Originally from the Crimean peninsula in the Black Sea."
  Origin wording caution: some catalogues say "Krymsk" or "Krim,
  Russia" — Krymsk (mainland Krasnodar) ≠ Crimea. Use only the SSE
  "Crimean peninsula" wording. Black Crimea / Noire de Crimée are
  generic synonyms, not renames.

### Data

- **Type/habit/leaf:** beefsteak/slicing (Cornell "standard
  beefsteak", SSE "Beefsteak fruits"); indeterminate (unanimous);
  regular leaf from secondary catalogues only — not notable, do not
  encode.
- **DTM ⚠️:** SSE 70–90 from transplant; Botanical Interests 70–90
  from transplanting; Johnny's 80; Baker Creek 80; Cornell ~80; WSU
  Extension 75 (several unstated basis). **Range 70–90, midpoint
  80.** The 20-day spread hits the §6.2 flag although point
  estimates cluster tightly at 75–80; §8 should use both ends
  (70d → 10 Stardew days, 90d → 13).
- **Weight ⚠️:** Johnny's 8–16 oz; Baker Creek 8–12 oz; Botanical
  Interests 10–12 oz; UC ANR/K-State lists 8–16 oz. **Range 8–16
  oz, midpoint 12 oz**, driven by the 16 oz top end; per-catalogue
  midpoints are 10–12 oz.
- **Conversions (indicative):** StardewDays 12; 4-day regrow.
  SellPrice ≈ 120g at 12 oz (SeedPrice 95g). Above 100g: raw-fruit
  Loved by Leah/Maru/Demetrius and Gus (beefsteak).
- **Recipe:** beefsteak → Heirloom Caprese (§7.3).
- **Sprite:** dark mahogany / deep brown-red to violet-brown,
  darkening almost to black with heat/sun — keep it mahogany, full
  black would misread at icon size. **Green/brown-green shoulders
  persist when ripe** (all sources): draw a distinct dark
  olive-green collar at the stem end — the strongest signature.
  Flattened globe, wider than tall, shallow ribbing/lobing at the
  shoulders; 2–3 shoulder notches + flattened top distinguish it
  from a round red slicer (and from other "black" types) even in
  greyscale. Full 16 px width, low height.

**Outstanding:** §8 at DTM 70/90 and weight 8/16 oz.
Trademark + PVP searches: done 2026-11-21 (trademark export
at `/home/kathleen/code/tm-research/krim.xlsx`, outside this repo).

Sources include:
[Cornell CCE](http://vegvariety.cce.cornell.edu/main/detail.php?variety_id=1670&filterBy=0),
[Seed Savers](https://shop.seedsavers.org/black-krim-tomato),
[Johnny's](https://www.johnnyseeds.com/vegetables/tomatoes/heirloom-tomatoes/black-krim-organic-tomato-seed-3814G.html),
[Baker Creek](https://www.rareseeds.com/products/tomato-black-krim),
[West Coast Seeds](https://www.westcoastseeds.com/products/black-krim-organic),
[WSU Heirloom Tomatoes 2018 (PDF)](https://s3.wp.wsu.edu/uploads/sites/2073/2018/04/HEIRLOOM-TOMATOES_2018.pdf).

---

## Sungold (= Sun Gold)

**Verdict: NOT hard-blocked as a §3.4 selective hybrid
(provisional).** USPTO (both spellings) + USDA PVP searches
completed 2026-11-21, both clear. Remaining before §9 sign-off:
§3.4 approval write-up as the cherry hybrid + §8/yield work.

**Name/spelling:** breeder form is **Sungold** (one word): Tokita
Seed America "Sungold F1 ... Tokita developed Sungold for its
release in 1989, and international availability in 1992". Johnny's
house style is "Sun Gold (F1)"; Cornell lists "'Sungold' ... Also
known as 'Sun Gold'". Same variety, not distinct strains.
Recommended in-game: **Sungold**. Avoid camel-case "SunGold" — that
styling is Zespri kiwifruit branding.

### §3.2 + §3.4 gate

- **§3.2.1 — pass.** No ™/® on the tomato name at Johnny's, Burpee,
  Territorial Seed, Osborne Quality Seeds, or the breeder Tokita US
  itself; reference use by Wisconsin Extension, NDSU Extension, UC
  ANR.
- **§3.2.2 — PASS; formal searches (both spellings) inspected,
  2026-11-21.** Register: USPTO Trademark Search. Evidence
  (outside this repo): `/home/kathleen/code/tm-research/sungold1word.xlsx`
  (SHA-256 `0e5f417f8d30be1935d499064ee8dacc081a0dc8323179eadb20d391a9a1766f`;
  created 2026-11-21T17:34:52Z; search term "sungold", results
  1–9) and `/home/kathleen/code/tm-research/sungold2word.xlsx`
  (SHA-256 `d1d354d977b3ba418e6cc0d3543dae826efa1121f459b5d782eb65d50aec6743`;
  created 2026-11-21T17:37:17Z; search term "sun gold", results
  1–50, all IC 031). Result: **no Live mark — under either
  spelling — covering tomato seeds, live tomato plants, or fresh
  tomatoes.** Detail:
  - One-word search (9 hits): exact SUNGOLD Live marks are Serial
    85146050 / Reg. 5319734 (Zespri Group, IC 016/031) and Serial
    90601085 / Reg. 7709323 (Westfine Meats, IC 029/035/041 meat
    and meat retail/blog services). ZESPRI SUNGOLD KIWIFRUIT
    Serial 79377003 / Reg. 7561519 is also Live. The Zespri Reg.
    5319734 IC 031 segment is cut off in the export's truncated
    goods field ("Agricultural and…"); its full scope was
    corroborated 2026-11-21 via two USPTO-record mirrors (Justia,
    TrademarkElite): "live kiwifruit; fresh fruits, namely,
    kiwifruit; agricultural seeds for kiwifruits, natural plants
    in the nature of kiwifruit plants" — **kiwifruit only**,
    confirming the requirements doc's preliminary note on the
    register itself. SUNGOLD Serial 86042056 / Reg. 5680788
    (grass seed) is **Dead** in the direct export, resolving the
    earlier mirror status conflict.
  - Two-word search (first 50, all IC 031): the three exact SUN
    GOLD marks (Serials 74057887, 73524177 — grapes/dates;
    87519306 Westlake Produce — a fresh-produce list with no
    tomatoes) are **all Dead**. Live tomato-goods marks in the
    fuzzy results use different names (MAGIC SUN, "Fresh
    tomatoes"; SUN TASTY, whose IC 031 text expressly excludes
    tomatoes) and do not claim Sungold/Sun Gold.
- **PVP — PASS; formal search 2026-11-21.** Official USDA PVP
  Application Status Report (see San Marzano entry): **0 hits**
  for "sungold"; sole "sun gold" hit is a watermelon (App.
  8200061, Harris Moran, Certificate Expired 2001) — unrelated.
  Confirms Osborne "PVP: N" from the register side. (EU PBR not
  separately searched; released 1989 in any case.)
- **§3.2.3 — pass with breeder recorded:** Tokita Seed Co., Saitama,
  Japan (1989 Japan, 1992 international). Undisclosed F1 parents do
  not fail §3.4.2. No live exclusive *name* claim found; seed is
  resold by ≥5 unaffiliated companies. Osborne's "rest of the Sun
  Series!" is marketing copy; Sungold itself carries no ™ there.
- **§3.4.1 Benchmark uniqueness — strong, with one counterpoint.**
  Tokita: "A standard for sweetness." Wisconsin Extension
  recommends it; UC ANR lists it; NDSU 2022 trials ran Sungold vs
  SunSugar as "the two most popular" gold cherries — Sungold
  earliest and most vigorous, 90% recommend, rating tied 8.43, **but
  57% preferred SunSugar overall**. So: the standard comparator for
  sweet orange cherry, not unanimously top-tasting. An RHS Award of
  Garden Merit is claimed by a reseller and was not verified on
  rhs.org.uk — treat as secondary.
- **OP alternatives considered — none fills the slot:** Sungold
  Select / Big Sungold Select (dehybridised OPs, reported unstable
  segregants, less sweet, ~75d); Isis Candy (red-gold bicolor, not
  orange); Black Cherry (dusky purple-brown, different profile);
  Gold Nugget (yellow, determinate, mild). Orange Paruche, SunSugar,
  Clementine are themselves F1s. No established OP tangerine-orange
  indeterminate cherry with Sungold's high-Brix (8–9%) profile was
  found in trusted sources.
- **§3.4.3/4:** must be labelled **modern F1 hybrid, never
  heirloom/OP** in player-facing text. Consumes the
  one-hybrid-per-type **cherry slot** (see Sweet 100).

### Data

- **Type/habit/leaf:** cherry, indeterminate, vigorous tall vine
  (unanimous). No trusted source states a notable leaf type — do not
  invent one; default regular-leaf crop sprite (see cluster note).
- **DTM:** Johnny's 57 from transplant; Tokita-sourced Stokes/Gowan
  sheets 55–60 from transplant; Territorial 65 from transplant;
  Osborne 65 from transplant; Burpee 65 (garden-based); West Coast
  65 (unstated). **Range 55–65, midpoint 60.** Two catalogue
  clusters (57 vs 65); ±5d, inside the §6.2 flag threshold.
- **Weight ⚠️ (if coarse rounding included):** Tokita 12–15 g;
  Johnny's 15–20 g; Osborne 0.5 oz; Stokes/Gowan 13–15 g. Core
  breeder-anchored range **12–20 g = 0.42–0.71 oz, midpoint ~0.56
  oz**; recommend §5 input ≈0.5 oz. Burpee/UC ANR "1 oz" looks like
  coarse rounding; including it triggers the >±50% flag, so §8
  should test both ends.
- **Conversions (indicative):** StardewDays 9 (range ends 9–10).
  SellPrice ≈ 20g/fruit at 0.56 oz (SeedPrice 15g) — cherry types
  may price below 35g with yield making up the difference (§5.1);
  regrow/fruits-per-harvest model (§4.3) still to be settled. Below
  100g: no raw-fruit Loved gifts.
- **Recipe:** cherry → Heirloom Cherry Salad (§7.5).
- **Sprite:** bright tangerine/apricot-orange, perfect round globes
  1–1¼ in (2.5–3 cm), smooth, no stripes/green shoulders.
  Distinguisher beyond colour: size (much smaller than vanilla) and,
  on the crop texture, **long grape-like trusses of 10–15 fruit**
  (Territorial) — hanging clusters of many small balls, not single
  large fruit. The cherry-plant sprite difference is the truss, not
  the leaves. Thin skin/splitting is handling lore, not a sprite
  trait.

Sources include:
[Tokita Seed America](https://www.tokitaseed.us/cherry-tomatoes),
[Johnny's](https://www.johnnyseeds.com/vegetables/tomatoes/cherry-tomatoes/sun-gold-f1-tomato-seed-770.html),
[Burpee](https://www.burpee.com/products/tomato-sun-gold-hybrid-prod001012),
[Territorial](https://territorialseed.com/products/tomato-sungold),
[Osborne](https://www.osborneseed.com/products/sungold-f1-untreated-tomato-seeds),
[Wisconsin Extension](https://hort.extension.wisc.edu/articles/home-grown-tomatoes-wisconsin/),
[NDSU 2022 trial summary (PDF)](https://www.ndsu.edu/agriculture/sites/default/files/2023-03/summary2022.pdf),
[Justia: SUNGOLD kiwi mark](https://trademarks.justia.com/851/46/sungold-85146050.html).

---

## Green Zebra

**Verdict: NOT hard-blocked (provisional — USPTO + USDA PVP
searches completed 2026-11-21, both clear). Locked in v1 with recipe
category decided (lean menu, author, 2026-11-21):** Heirloom Caprese
via beefsteak/slicing eligibility (requirements §7.3). This does
not reclassify Green Zebra as a beefsteak, cherry, or paste — its
sourced type remains saladette slicer.

### §3 gate

- **Origin/standing:** bred by Tom Wagner (Everett, WA) from four
  heirloom lines, introduced in his Tater-Mater Seed catalog in 1983
  (Cornell says "developed ... 1985"). A modern-bred, stable
  open-pollinated "created heirloom", not a pre-modern family
  heirloom — it qualifies under §3.2.4's recently-bred-OP clause
  only because items 1–3 are otherwise clear.
- **§3.2.1 — pass.** Plain name, no ™/®, at Johnny's, High Mowing,
  Botanical Interests, Seed Savers Exchange, Osborne; university
  listings at Cornell CCE and UC ANR. Decades of worldwide generic
  use.
- **§3.2.2 — PASS; formal search inspected, 2026-11-21.**
  Register: USPTO Trademark Search. Evidence: export file
  `/home/kathleen/code/tm-research/greenzebra.xlsx` (outside this
  repo; SHA-256
  `3022ec23c9e5db28f4ed10f93817d981757a9cc8d9a23fb28fab7b0198e391c1`),
  workbook created 2026-11-21T17:26:07Z. Sheet `tmSearch` records
  search term **"green zebra"**, "Search results from 1 to 50"
  (14 Live / 36 Dead). Result: the **only exact "GREEN ZEBRA" hit
  is Serial 76247708, Dead** (IC 029/030 snack mixes/spreads — the
  mark mirrors had shown abandoned 2003); **no Live exact mark, and
  nothing covering tomato seeds, live tomato plants, or fresh
  tomatoes.** The only Live IC 031 hit is GOLDEN ZEBRA Reg.
  2544852 ("LIVE ORNAMENTAL PLANTS") — different name, non-edible
  goods; other ZEBRA IC 031 hits are Dead (fresh lemons, grass
  seed/sod, live flowers). The second dead exact-name mark from
  mirrors (Serial 75555462, nail files, cancelled 2010) does not
  appear in this export's first 50 (presumably ranked below the
  food/agriculture hits); it is dead and non-seed either way.
  Export limitation as for Black Krim: first-50 hits, exact mark
  ranked first, author reports all clear.
- **§3.2.3 — pass. PVP — PASS; formal search 2026-11-21.**
  Official USDA PVP Application Status Report (see San Marzano
  entry): **0 hits** for "green zebra"/"zebra". Confirms reporting
  that Wagner sought no PVP/patent (public-domain breeder).
- **Conflicts noted (§3.3):** West Coast Seeds shows stray "(Hybrid
  seeds)" template text while its structured field says OP; Osborne
  renders both F1 and OP badges. Against the unanimous
  OP/stable-since-1983 record these read as retailer template
  artefacts, not identity conflicts — but neither retailer should be
  cited as OP evidence.

### Data

- **Type/habit/leaf:** **small salad/saladette slicer** — the key
  classification finding. Johnny's: "tangy salad tomato ... slicing
  into wedges for salads"; UC ANR files it under Slicer (not
  Beefsteak or Cherry & Paste); Cornell "standard main-season type".
  At 3–5 oz, round and smooth, it is **not a beefsteak** (no source
  calls it one), **not a cherry**, **not a paste**. Indeterminate
  (unanimous); regular leaf only from Tatiana's multi-grower entries
  (single lower-tier reference).
- **DTM:** Johnny's 72; Botanical Interests 75 from transplanting;
  Cornell 75–80 (basis unstated; an odd "57 to 80" prose figure
  disregarded as blended greenhouse/field reports); High Mowing
  75–80; SSE 75–80 from transplant; UC ANR 80. **Range 72–80,
  midpoint 76.**
- **Weight:** Johnny's 3–4 oz; Cornell 4–5 oz; High Mowing 4–5 oz;
  UC ANR 3–5 oz; Botanical Interests 3–5 oz. **Range 3–5 oz,
  midpoint 4.0 oz.** No flag.
- **Conversions (indicative):** StardewDays 11 (same as vanilla,
  phases 2,2,2,2,3); 4-day regrow. SellPrice ≈ 65g (SeedPrice 50g).
  Below 100g: no raw-fruit Loved gifts. (Caprese *is* now extended
  to slicing types — see Recipe below — and the raw-gift rule for Gus
  already says "beefsteak/slicing or paste", but the 100g threshold
  still excludes raw Green Zebra at 65g; recipe eligibility and raw
  Loved status are separate tests.)
- **Recipe: DECIDED — lean option (a) (author, 2026-11-21).**
  Heirloom Caprese is formally extended to "beefsteak/slicing"
  (wording already used in §3.4 and the gift-taste summary), so
  Green Zebra qualifies *as a saladette slicer* alongside the three
  beefsteaks (requirements §7.3). Not cherry-type (no Cherry Salad)
  and not paste-type (no Bisque/Shakshuka). Options (b) no-recipe
  and (c) drop are rejected by the lock + this decision; option (d)
  below is not pursued. **Do not silently reclassify it as beefsteak
  against the sources** — eligibility is recorded as slicing in
  every doc and data field. (Also ruled out, author, 2026-11-21:
  letting heirlooms substitute for the vanilla Tomato in vanilla
  recipes — with or without a silver-quality dish bonus — per
  requirements §2/§10.)
- **Author idea for option (d) (2026-11-21; NOT pursued under the
  lean decision — retained for the record, sub-questions moot unless
  reopened by a new recorded decision):**
  a tomato-and-onion salad in the style of the author's mother's —
  red onions with saladette tomatoes such as Green Zebra (and,
  at home, the excluded 4th of July). Points that were unresolved
  before it could become a requirements §7.x entry (all moot under
  the lean decision):
  1. **Salad count.** It would be the third salad among four mod
     dishes (Caprese, Cherry Salad, this; plus Bisque). Distinguishing
     it by having no cheese, basil, or leafy green helps, but does
     not make it a hearty/cooked dish.
  2. **Onion ingredient.** Vanilla has no onion (still less red
     onion) crop; the closest item is Spring Onion, a Spring
     forage. Options are to use Spring Onion as the onion stand-in
     (name fits; colour/flavour do not — a sprite should then show
     pale/green slices, not red rings), or to add a supporting
     onion crop, which runs against the established anti-bloat
     decisions (no arugula crop, no balsamic item). A Cornucopia
     swap like basil's would be a second such switch. No option
     chosen yet.
  3. **Gift tastes.** Leah was the author's first thought for a
     Loved recipient, and she does love vanilla Salad/Vegetable
     Medley — but she is already Loved on Caprese and Cherry, and
     the gift-taste audit (gift-tastes doc, Part I point 4) argues
     against making her the universal tomato-dish lover. Jodi —
     the audit's only villager who loves two vanilla tomato
     dishes, and a family-cook fit for a family recipe — is the
     evidence-based alternative (including as recipe sender).
     Leah would still Like it automatically via the Cooking
     category.
  4. **Scope gate.** A whole fourth recipe is hard to justify for
     one variety. This option becomes much stronger if at least
     one researched early small-slicer (e.g. Stupice, if its
     sourced type qualifies) joins Green Zebra; with Green Zebra
     alone, option (a) is the cheaper fix.
- **Sprite:** small round/globe, smooth ("essentially free of
  cracks"), **essentially no ribbing**. Ripens pale green →
  olive-yellow/golden-green (chartreuse) with **bold dark
  forest-green vertical stripes** (stem-to-blossom), plus a slight
  amber/yellow blush at full ripeness; flesh emerald green. The
  light-ground/dark-band pattern is a value cue readable without
  hue — the most colour-blind-safe distinguisher in the set. Draw
  slightly smaller than a vanilla fruit (~2–3 in class).

**Outstanding:** §9 final recording only (final price/gift/recipe
rows; no wide-spread §8 flag on its data) plus the project-wide
utility-patent decision. Recipe category: decided 2026-11-21
(Caprese via slicing, above). Trademark + PVP searches: done
2026-11-21 (trademark export at
`/home/kathleen/code/tm-research/greenzebra.xlsx`, outside this repo).

Sources include:
[Johnny's](https://www.johnnyseeds.com/indeterminate-tomatoes/green-zebra-organic-tomato-seed-2276.html?cgid=indeterminate-tomatoes),
[High Mowing](https://www.highmowingseeds.com/organic-non-gmo-green-zebra-tomato-b.html),
[Botanical Interests](https://www.botanicalinterests.com/products/Green-Zebra-Pole-Tomato-Seeds),
[Seed Savers](https://www.seedsavers.org/green-zebra-organic-tomato),
[Cornell CCE](https://vegvariety.cce.cornell.edu/main/detail.php?filterBy=0&variety_id=1648),
[UC ANR](https://ucanr.edu/site/uc-master-gardener-program-contra-costa-county/gtps-2026-tomatoes-slicer),
[Victory](https://victoryseeds.com/products/green-zebra-tomato).

---

## Pineapple

Plain "Pineapple" bicolor beefsteak. **Verdict: NOT hard-blocked
(provisional — USPTO IC 031 + USDA PVP searches completed
2026-11-21, both clear; only §8 range-end work remains).**

### §3 gate

- **§3.2.1 — pass.** Listed exactly as "Pineapple", no ™/® on the
  variety name, by Victory Seed, Baker Creek (the ® on that page is
  the company logo), True Leaf Market, Park Seed ("Variety:
  Pineapple"); university reference at Cornell CCE. Tatiana's
  TOMATOBase notes 44 commercial sources in the 2004 *Garden Seed
  Inventory* — strong generic-use evidence.
- **§3.2.2 — PASS for seeds/plants/fresh-produce scope; formal
  search inspected, 2026-11-21.** Register: USPTO Trademark
  Search. Evidence: export file
  `/home/kathleen/code/tm-research/pineapple.xlsx` (outside this
  repo; SHA-256
  `91ee27a60dd68fadb037e8ebd350d97c81affceda7feed2ea56946168cf7a1ee`),
  workbook created 2026-11-21T17:32:51Z. Sheet `tmSearch` records
  search term **"Pineapple"**, "Search results from 1 to 38" —
  all 38 hits include IC 031 (the search was evidently scoped to
  the class that matters for this gate; 18 Live / 20 Dead).
  Result: **no wordmark consisting of PINEAPPLE alone at all, and
  nothing covering tomato seeds, live tomato plants, or fresh
  tomatoes.** Live hits are composite marks for the *Ananas*
  fruit (RUBYGLOW/PINK/THE PERFECT PINEAPPLE "fresh
  pineapples"), ornamentals (PINEAPPLE BRANDY coleus; PINEAPPLE
  TART "live plants excluding pineapple plants"), or pet food.
  Live composite marks with broader fresh-produce wording exist —
  e.g. Serial 99922976 SUPER SWEET PINEAPPLE TROPICALES DEL VALLE
  ("Fresh pineapples; fresh fruits; fresh vegetables") and Serials
  90724648/62 MARCA PINA/PIÑA (whose IC 029 list includes tomato
  paste/juice) — but §3.2.2 asks for a live mark covering that
  scope **under the variety name**; a composite mark containing
  the common word "pineapple"/"piña" does not claim PINEAPPLE
  alone for tomatoes, and none claims tomato seed. Scope note:
  this export is IC 031-centric; exact-name marks confined to
  IC 029/030 processed goods would not appear unless multi-class —
  the earlier mirror work found none relevant, and processed-food
  scope alone would not block the seed variety in any case.
- **§3.2.3 — pass.** Reportedly an old Ohio heirloom introduced
  commercially by the now-defunct Gleckler Seedsmen of Metamora,
  Ohio (1950s). No current exclusive ownership claimed.
- **§3.2.4 — pass.** Cornell: "Open-pollinated, main-season,
  heirloom ... beefsteak-type". Iowa State Extension 2001 trial:
  "Indeterminate heirloom with 85 day maturity".
- **PVP — PASS; formal search 2026-11-21.** Official USDA PVP
  Application Status Report (see San Marzano entry): **0 tomato
  hits** for "pineapple"; sole hit overall is Pineapple Crush
  Improved, a marigold (App. 8300160, Certificate Expired 2002) —
  unrelated. Now a database result, not just 1950s inference.
- **Distinct varieties whose data must not be used:** Hawaiian
  Pineapple (solid orange, Indiana 1970s–80s — some secondary sites
  wrongly treat it as an alias; their data excluded); Pineapple Pig
  (modern OP, Brad Gates/Wild Boar Farms); Ananas Noire / Black
  Pineapple (Belgian, released 2005); Green Pineapple, Golden
  Pineapple. Tatiana's lists French "Ananas" as an alias; no
  French-language Ananas data used.

### Data

- **Type/habit/leaf:** large beefsteak/slicing, bicolor;
  indeterminate (every source). **Leaf: unresolved conflict** —
  Tatiana's (multiple seed sources) says regular leaf; Cornell and
  Alliance of Native Seedkeepers say potato-leaved, and Cornell's
  entry also reverses the dominant colour, suggesting
  contamination. **Do not encode leaf type as a distinguishing
  trait; record as disputed.**
- **DTM:** Victory 75 (outlier; it simultaneously classes the
  variety "Late Season"); Baker Creek 80; Cornell 85; Iowa State
  Extension 85; True Leaf 85–90 from transplant (its page also has a
  contradictory "75–80 from sowing" note — disregarded as garbled);
  Park 85–95; Tatiana's Michigan grower ~90. **Range 75–95,
  midpoint 85** (cluster 85–90; endpoints convert to 11 and 14
  Stardew days — §8 must use both ends).
- **Weight ⚠️ WIDE-SPREAD FLAG.** Victory 12–16 oz; Baker Creek
  "easily reaching 1–2 lb"; Cornell 1–2 lb; True Leaf 1–2 lb;
  Tatiana's growers 8–12 oz (BC) and "usually 12–16 oz,
  occasionally to 24 oz" (Michigan). Stated catalogue range **12–32
  oz (midpoint 22 oz)** overstates the typical fruit because 32 oz
  is an "up to" maximum; typical observed **12–16 oz (mid 14 oz)**.
  Exceeds the ±50% flag either way. **Author experience
  (2026-11-21, family-grown, not a §6 formula source):** Pineapple
  "can def easily get up to 1–2 lbs" (16–32 oz) — supports using
  the stated-range end (22 oz) seriously in §8 rather than
  treating 1–2 lb claims as pure catalogue exaggeration.
- **Conversions (indicative):** StardewDays 12 (phases 2,2,2,2,4);
  4-day regrow. SellPrice ≈ 130g at 14 oz / 165g at 22 oz (SeedPrice
  105g / 130g). Above 100g at either end: raw-fruit Loved by
  Leah/Maru/Demetrius and Gus (beefsteak).
- **Recipe:** beefsteak → Heirloom Caprese (§7.3).
- **Sprite:** yellow-gold to deep-orange base with pink/red
  mottling that **radiates from the blossom end** (Victory, most
  specific) — red blush concentrated at the bottom, shoulders
  staying yellow-orange, faint streaking. Render a gradient blush,
  not uniform red and not hard zebra stripes. Interior marbling
  (yellow flesh shot through with red) is the namesake sliced look
  but is **not visible on whole fruit**. Oblate, flattened,
  irregular, wider than tall; shallow shoulder ribbing only (Cornell
  says smooth-textured — not Costoluto fluting). One of the widest
  fruit sprites in the set; the flattened irregular silhouette is
  the colour-blind-safe distinguisher.

**Outstanding:** weight/DTM range-end §8 check
before pricing; leaf type stays disputed. Trademark (IC 031) +
PVP searches: done 2026-11-21 (trademark export at
`/home/kathleen/code/tm-research/pineapple.xlsx`, outside this repo).

Sources include:
[Victory](https://victoryseeds.com/products/pineapple-tomato),
[Baker Creek](https://www.rareseeds.com/products/tomato-pineapple),
[True Leaf](https://trueleafmarket.com/products/tomato-pineapple-organic-seeds),
[Park Seed](https://www.parkseed.com/products/pineapple-tomato-seeds-05420-pk-p1),
[Cornell CCE](https://vegvariety.cce.cornell.edu/main/detail.php?variety_id=1693&filterBy=0),
[Iowa State Extension trial (PDF)](https://www.extension.iastate.edu/organicag/files/documents/alleetomato01.pdf),
[Tatiana's TOMATOBase](https://tatianastomatobase.com/wiki/Pineapple).

---

## Brandywine

**Verdict: DOUBTFUL → exclude / do not add to `content.json`
(§3.3). Formal TSDR scoping completed 2026-11-21 and did NOT clear
it:** crabapple actual use is proven, but the live registration's
goods are unqualified "PLANTS" (below). PVP: clear (below). Data
below is provisional only, not approval. Clearing this would
require a recorded author decision to re-scope §3.2.2 by actual
trade use — a requirements change, not more searching.

Recommended exact in-game form, if cleared: **Brandywine** — the
classic pink, potato-leaf beefsteak. Do not name it "Sudduth's
Strain", "Quisenberry", "Red Brandywine", or "Landis Valley"
in-game.

### §3 gate

- **§3.2.1 — pass.** Generic, no ™/®, at Cornell CCE ('Brandywine':
  heirloom, indeterminate, potato-leaved, 10–24 oz deep-pink),
  Johnny's (OP, heirloom), Burpee ("Brandywine Pink", HEIRLOOM,
  1885), Baker Creek, Territorial, Seed Savers Exchange.
- **§3.2.2 — FORMAL SEARCH DONE 2026-11-21; DOUBTFUL stands.**
  Official TSDR API record (Serial 73162680, HTTP 200, verified
  independently by delegated subagent and parent): **BRANDYWINE,
  Reg. 1112854, Live** ("LIVE/REGISTRATION/Issued and Active",
  "The registration has been renewed."), sole goods verbatim
  **"IC 031: PLANTS."**, standard characters claimed, drawing
  code 1 (typeset word — word-only), **no disclaimer**
  (`markDisclaimer: null`), owner LCN Holdings, Inc. (Ohio corp.,
  Perry OH), filed 1978-03-17, registered 1979-02-06, first use
  1978-02-15, third renewal 2018-10-11. Official discovery
  backend (same method as San Marzano): live BRANDYWINE phrase
  hits 34, exact live 8, **live + IC 031 = 1 (this record only)**;
  live + goods "tomato" = 0, "seeds" = 0, "plants" = 1.
  **Actual use = crabapple, proven:** Purdue Arboretum "*Malus* ×
  'Branzam' [sold as Brandywine®] (Brandywine Flowering
  Crabapple)"; owner's LCN Selections page "Malus 'Branzam'
  Brandywine®" + sell sheet; TSDR assignment chain Zampini →
  Lake County Nursery → LCN Holdings matches the breeder. (TSDR
  specimen image itself was not retrievable — legacy endpoints
  404/403/503, empty documentIds.) **Why it still fails:** a
  specimen shows use; it does not amend the registered
  identification. Unlike Sungold (goods expressly kiwifruit-only)
  or San Marzano (other classes + disclaimers), this live
  word-only registration covers **"PLANTS" without limitation**,
  so §3.2.2's required negative ("no live trademark covering …
  plants") cannot be signed. §3.3: exclude. No *second* relevant
  mark and no tomato-seed use exist on trade facts.
- **PVP — PASS; formal search 2026-11-21** (moot while trademark
  doubt stands). Official USDA PVP Application Status Report (see
  San Marzano entry): **0 hits** for "brandywine"/"sudduth".
  Confirms Osborne "PVP: N" from the register side.
- **§3.2.3 — pass for the generic form.** Johnny's "Our 'Quisenberry'
  strain" and Territorial's "our selection" are strain language
  within generic listings — corroboration only, never sole formula
  source.
- **§3.2.4 — pass.** Cornell classifies 'Brandywine' and 'Brandywine
  (Sudduth's Strain)' as Heirloom; Johnny's Heirloom + OP; Burpee
  dates it to 1885. Documented history (Craig LeHoullier / SSE
  yearbook record): entered SSE in 1982 via Ben Quisenberry, from
  Dorris Sudduth Hill, whose family had grown it 80+ years.

**Strain care (§3.3) — critical.** "Brandywine" in trade covers
several distinct tomatoes; mixing their data would be wrong:

| Form | Fruit / leaf | Status for mod |
|---|---|---|
| Brandywine (classic) | Pink, large beefsteak, **potato-leaf** | The generic variety; recommended form |
| Sudduth / Sudduth's Strain | Same pink potato-leaf type; provenance label for the Sudduth Hill → Quisenberry → SSE lineage | Same variety, sold generically; data usable as corroboration, not sole anchor |
| Quisenberry strain | Johnny's name for the same lineage | Same variety; do not use as in-game name |
| Red Brandywine / Landis Valley | **Red, regular-leaf**, 8–12 oz, Chester Co. PA origin | **Different variety — do not use its data.** SSE's current "Brandywine (aka Red Brandywine)", deep red 8–12 oz, 80d, is this one |
| Yellow / Black / Purple etc. | Distinct colours, some stabilised crosses | Out of scope; do not borrow data |
| Named substrains (Glick's, Joyce's, Cowlick, ...) | Individual seed-saver selections | Avoid entirely |

LeHoullier's history shows the generic pink potato-leaf "Brandywine"
*is* the Sudduth/Quisenberry lineage, and generic-named and
Sudduth-labelled sources agree on type, habit, leaf, and size class.
Formula inputs below are anchored on generic-named sources, with
Sudduth-labelled values shown at the top of the range.

### Data (pink potato-leaf form only; provisional)

- **Type/habit:** beefsteak/slicing; indeterminate (every source).
  Burpee notes fruit set only "one or two per cluster" — supports
  1 fruit/harvest, 4-day regrow (§4.3).
- **Leaf type — POTATO-LEAF, confirmed** by Cornell CCE, Johnny's,
  Burpee, Baker Creek, Territorial. Potato-leaf leaflets are broad,
  oval, smooth-margined (untoothed), with few interstitial leaflets —
  a solid, undissected silhouette, vs. regular leaf's deep serration
  and feathery lobing (UC ANR). **The crop texture must use
  smooth-edged oval leaf masses, not vanilla-style frilly leaves** —
  identifiable before fruiting. This confirms the author's note that
  Brandywine needs changed leaves.
- **DTM:** Johnny's 78 (from transplant basis stated); Baker Creek
  (Sudduth) 80; Burpee 85; Territorial 85; Cornell 'Brandywine'
  80–90 (prose "about 70 to 80" is internally inconsistent — field
  value used); Cornell Sudduth 90. **Range 78–90, midpoint 84.**
  Confirms "notoriously late"; at the 90d end the formula gives 13
  Stardew days — record in the §8 range-end check.
- **Weight ⚠️:** Cornell 10–24 oz; Burpee average 14 oz; Johnny's
  "often over 1 lb"; Baker Creek Sudduth "often reaching a pound
  and a half" (24 oz); Cornell Sudduth "up to 2 lb" is a maximum,
  excluded. **Typical range 10–24 oz, midpoint 17 oz** (averages
  cluster 14–16 oz).
- **Conversions (indicative, only if cleared):** StardewDays 12
  (phases 2,2,2,2,4); SellPrice ≈ 145g at 17 oz (SeedPrice 115g).
  Above 100g: raw-fruit Loved by Leah/Maru/Demetrius and Gus.
- **Recipe:** beefsteak → Heirloom Caprese (§7.3).
- **Sprite:** very large flattened/oblate beefsteak; deep
  pink/rose-red skin, distinctly pinker than vanilla; **deeply
  lobed, ribbed shoulders** (Cornell) — ribbing + flattened shape,
  not colour alone, carry identification. Optional faint
  green-shoulder tint. Crop: potato-leaf foliage as above, sparse
  large fruit (1–2 per cluster cue).

**Outstanding:** nothing further to search. Trademark doubt is
resolved as a *search* matter (2026-11-21: live word-only
"PLANTS" registration confirmed; crabapple use proven but does
not narrow the goods) and PVP is clear. Reopening requires a
recorded author decision to re-scope §3.2.2 by actual trade use
(or legal advice to that effect); §5/§8 work only if reopened.

Sources include:
[Cornell CCE](https://vegvariety.cce.cornell.edu/main/detail.php?variety_id=1671&filterBy=0),
[Johnny's](https://www.johnnyseeds.com/featured/heirloom/brandywine-organic-tomato-seed-2845.html?cgid=heirloom),
[Burpee](https://www.burpee.com/products/tomato-brandywine-pink-prod000974),
[Baker Creek Sudduth](https://www.rareseeds.com/products/tomato-brandywine-sudduth-s-strain),
[LeHoullier, "Brandywine and Company"](https://www.webgrower.com/gardening/craig_brandywine/),
[USPTO TSDR API: Serial 73162680](https://tmsearch.uspto.gov/tsdr-api-v1-0-0/tsdr-api?serialNumber=73162680),
[LCN Selections (owner)](https://www.lakecountynursery.com/our-plants/lcn-selections/),
[Purdue Arboretum crabapple](https://www.arboretum.purdue.edu/explorer/plants/394/).

---

## Sweet 100

**Verdict: HARD-BLOCKED — as heirloom and as §3.4 hybrid. Step 2
(data collection) was not run.** Do not substitute "Super Sweet 100"
or "Sweet Million" to sidestep this (§2/§3.3). Keep Sungold as the
sole cherry-hybrid candidate.

### Identity

- **Sweet 100**: F1 hybrid cherry, introduced 1978 by Northrup-King
  Seed Co., Minnesota (now Syngenta/Rogers). No Seminis/De Ruiter
  origin evidence found.
- **Super Sweet 100 / Supersweet 100**: distinct successor F1, same
  breeder, 1982 (disease resistance, less cracking); it supplanted
  the original. Modern sellers conflate the two names, so data for
  the 1978 original cannot be cleanly separated (§3.3 strain
  problem).
- **Sweet Million F1**: a third variety (Sakata), "improved version
  of Sweet 100".
- Lineage conflict (itself a §3.3 doubt): Wild Garden Seed reports
  Peto held Sweet 100, Peto → Seminis 1996, and "'Sweet 100' became
  'Sweet Million F1'" — inconsistent with both accounts above and
  unresolved.
- **§3.2.4 fails outright**: 1978 commercial F1, not
  open-pollinated/heirloom in any trusted source.

### §3.2 items 1–3

- **§3.2.1:** superficially met for *Super* Sweet 100 (many sellers
  and extension lists, no ™/® seen). Necessary, not sufficient.
- **§3.2.2: cannot be satisfied.** Formal register search
  outstanding (as for all entries); web-index absence proves
  nothing.
- **§3.2.3: FAIL — documented trademark claim and enforcement.**
  Peto Seeds sent Seeds of Change a cease-and-desist over "Sweet
  100 OP" and stated that **"'Sweet 100' was a trademark that SOC
  was not free to use"**, forcing the rename to Peacevine (Wild
  Garden Seed, "IP Ambiguity"). No source shows that claim withdrawn,
  expired, or adjudicated generic. One claimant vs. generic sellers
  = conflict = exclude under §3.3.
- **PVP/patent:** no trusted evidence of in-force protection
  (Osborne: Super Sweet 100 "PVP: N"). PVP is not the blocker;
  trademark + §3.4 are.

### §3.4 hybrid gate — fails independently of trademark

1. **§3.4.4 selectivity budget — structural failure.** At most one
   hybrid per fruit type; Sungold already occupies the cherry
   slot. Sweet 100 cannot coexist with Sungold without a new recorded
   author decision (none exists); it could only *replace* Sungold.
2. **§3.4.1 benchmark uniqueness — replacement unjustified.** Sweet
   100 *was* historically the cherry benchmark, but (a) the 1978
   variety was superseded in 1982, (b) Sungold is the benchmark for
   a *distinct* niche (sweet orange cherry, higher Brix, distinct
   sprite colour), and (c) the red sweet-cherry niche has a direct
   OP fill-in: **Peacevine is the open-pollinated de-hybridised
   Sweet 100 itself** (Alan Kapuler / Peace Seeds, listed by High
   Mowing and Reimer). Leaving the F1 out leaves no gap — the
   opposite of §3.4.1.
3. §3.4.2 legal gate fails per §3.2.2/3. §3.4.3 is moot.

**Clean OP red-cherry alternatives for the slot (names only — each
needs its own full §9/§3 entry before any use):** Peacevine,
Gardener's Delight, Sweetie, Chadwick Cherry, Matt's Wild Cherry,
Large Red Cherry.

Sources include:
[Wild Garden Seed, IP Ambiguity](https://www.wildgardenseed.com/articles/ip-ambiguity-and-its-impact-on-organic-seed-availability),
[Gardener's Path history](https://gardenerspath.com/plants/vegetables/grow-supersweet-100-tomatoes/),
[Osborne Super Sweet 100](https://www.osborneseed.com/collections/seed-form-untreated-tomato-vegetable-seed/products/super-sweet-100-f1-untreated-tomato-seeds),
[High Mowing Peacevine](https://www.highmowingseeds.com/organic-non-gmo-peacevine-cherry-tomato.html).

---

## Kellogg's Breakfast

**Verdict: DOUBTFUL → EXCLUDE under §3.3 (not approved; do not add to
`content.json`).** Not a finding of actual infringement, PVP, or patent
— the §3.2.2 trademark item cannot be cleanly closed on accessible
evidence, and §3.2 states one missing item means "not yet approved".
Step 2 was not performed as approval work; the data note below is for
the record only.

### §3 gate

- **Person-name origin — well sourced, unrelated to the cereal
  company.** Named for **Darrell** Kellogg (not "Darryl") of Redford,
  Michigan, a railroad supervisor/seed saver who received the West
  Virginia heirloom from a friend; introduced via Seed Savers Exchange,
  commonly dated 1993. (SSE, Victory, Baker Creek.)
- **§3.2.1 — pass.** Five-plus unrelated sellers list "Kellogg's
  Breakfast" as a plain cultivar name, no ™/® on the variety: Seed
  Savers Exchange, Victory, Baker Creek, Territorial, Hoss; plus
  Cornell CCE reference use.
- **§3.2.2 — INCONCLUSIVE / fail-to-close.** No registration found for
  the exact phrase KELLOGG'S BREAKFAST for tomato seeds/plants/produce.
  But multiple **live, famous KELLOGG'S registrations** (Kellogg North
  America / Kellogg Co., cereal/breakfast foods, e.g. Reg. 1278006 and
  Reg. 0115348 of 1917) exist, and mirror class-heading text muddies
  whether any live mark covers Class 31 (seeds/fresh produce) — not
  resolvable without the actual register. Historic seed-field conflict
  increasing doubt: an old KELLOGG'S-for-seeds registration (0246685)
  is expired (1992), and the unrelated Kellogg Inc. seed company's
  application 74215509 was abandoned after inter partes decision in
  1993 — evidence the famous-mark owner has policed KELLOGG in the
  seed field.
- **Risk honestly stated:** 30+ years of open generic seed-trade use
  and a genuine unrelated-person origin argue the cultivar name itself
  is generic. But the in-game name would embed a live famous food mark
  **plus "Breakfast"** (the mark owner's core field) on a food/produce
  item in an MIT-distributed mod. Under §3.1/§3.3's
  stricter-than-litigation standard, unresolved Class 31 scope =
  doubt = exclude until a dated formal register search (ideally with
  legal review) resolves it in writing. No rename is permitted.
- **§3.2.3 — pass.** No exclusivity claimed; no PVP/patent found. One
  unsourced content-farm page alleging 2019 exclusive rights was
  disregarded per §6 (uncorroborated).
- **§3.2.4 — pass.** SSE heirloom/organic; Cornell "Heirloom";
  Victory "Open Pollinated", "old family heirloom". Not an F1, so §3.4
  does not apply.

### Data note (for the record only, not §9-approved)

Gate sources consistently describe an indeterminate orange beefsteak,
1–2 lb (≈24 oz mid), DTM 79–90 from transplant (SSE 80–90 from
transplant; Cornell 79–90, basis unstated; Victory/Baker
Creek/Territorial 85) → mid ≈85 → StardewDays 12 if ever cleared.
Leaf-type trap: original Kellogg's Breakfast is **regular-leaf**; the
potato-leaf form is the distinct selection **KBX**. Sources conflating
them must not be used. If cleared, it would be a fifth 12-day
beefsteak, orange, overlapping Pineapple's palette (see Assessment —
trimmed regardless of the legal outcome).

**Author note (2026-11-21, tentative):** leaning toward not pursuing
Kellogg's Breakfast at all, since Pineapple fills the yellow-orange
huge-slicer niche — with a more distinctive sprite (bicolor blossom-end
blush vs. solid orange) and no famous-mark problem. The formal search
for this name is therefore deprioritised unless the author revisits it.

**To unblock:** dated formal USPTO register search by a human
confirming no live KELLOGG mark covers tomato seeds/plants/produce,
recorded here — failing that, exclusion stands.

Sources include:
[Seed Savers](https://shop.seedsavers.org/kelloggs-breakfast-organic-tomato),
[Victory](https://victoryseeds.com/products/kelloggs-breakfast-tomato),
[Baker Creek](https://www.rareseeds.com/products/tomato-kellogg-s-breakfast),
[Territorial](https://territorialseed.com/products/tomato-kelloggs-breakfast),
[Cornell CCE](https://vegvariety.cce.cornell.edu/main/detail.php?variety_id=1664&filterBy=0),
[Tatiana's](https://tatianastomatobase.com/wiki/Kellogg's_Breakfast).

---

## 4th of July / Fourth of July

**Verdict: DOUBTFUL → EXCLUDE under §3.3 (do not add, do not rename).
Step 2 was not run.** The author's Burpee suspicion is confirmed as an
exclusive-introduction problem, whether or not a registered trademark
exists.

### §3 / §3.4 findings

- **F1 hybrid.** Burpee, Reimer, Cornell, and Wikipedia agree.
  Burpee's own listing ("Tomato: Fourth of July Hybrid", opened
  2026-11-21): "First-ever small sandwich-slicer to ripen by
  Independence Day ... Our earliest tomato ... indeterminate plants
  produce ... red 4 oz. tomatoes"; explicitly F1 Hybrid; Variety:
  Slicer. No ™/® on "Fourth of July" and "exclusive" does not appear
  on the current page — absence of a symbol does not cure the points
  below.
- **§3.2.3 exclusive claim — FAIL.** Secondary reporting (Tomato
  Dirt): "Fourth of July was bred by Burpee, which **maintains
  exclusive distribution rights**. As with other hybrids, the variety's
  parentage remains a well-guarded industry secret." Wikipedia and
  Cornell confirm a single-company Burpee introduction (sold since the
  1990s).
- **§3.2.1 — fail: other sellers do not make it generic.** Reimer
  sells "(F1) Fourth of July Tomato" with no Burpee credit, and
  Amazon/nurseries resell "Burpee 'Fourth of July' Hybrid". Because
  the F1 parents are secret, true-to-type seed can only originate from
  Burpee's lines; wholesale/resale is not §3.1's genuine generic use
  for an open-pollinated variety. The alias "Independence Day" adds
  doubt: H&R Seeds describes it as Burpee-developed but at 1–2 oz vs.
  Burpee's 4 oz — consistent with dehybridised/unstable seed, not the
  F1 identity. **Using the alias would also be a prohibited rename.**
- **§3.2.2 — unproven.** Formal register search outstanding.
  Secondary indexes found no live FOURTH OF JULY / 4TH OF JULY mark
  for tomato seeds/plants (the one Class 31 hit is FOURTH OF JULY
  Reg. 5416823 for **roses**). No PVP certificate or utility patent
  found — but for an F1 that proves little, since control is via
  undisclosed parents. Note: even a clean formal trademark search
  would **not** clear this variety, because §3.2.3 and §3.4 fail
  independently.
- **§3.4 hybrid gate — fails.** The claimed niche is earliness
  (~49 days), but OP early slicers fill it at ~50–55 days, and §4.2
  erases the gap entirely: 49d → `round(11×49/75)=7` → clamped to
  **9** Stardew days, identical to a ~52-day OP. No distinct
  flavour/colour/type benchmark remains in-game, and approval would
  spend the one-hybrid-per-type (slicing) budget on a generic red
  slicer. "One of the earliest non-cherry tomatoes" is popularity,
  not §3.4.1 uniqueness.

**Clean OP early varieties for the short-DTM slot (names only — each
needs its own full §9 check):** Stupice, Glacier, Oregon Spring,
Bloody Butcher, Siberian.

Sources include:
[Burpee](https://www.burpee.com/products/tomato-fourth-of-july-hybrid-prod000988),
[Tomato Dirt](https://www.tomatodirt.com/fourth-of-july-tomato.html),
[Cornell CCE](http://vegvariety.cce.cornell.edu/main/detail.php?variety_id=1491&filterBy=0),
[Reimer](https://www.reimerseeds.com/fourth-of-july-tomato-seeds).

---

## Peacevine (addition, researched 2026-11-21)

Author-selected OP red cherry to fill the Sweet 100 slot.
**Verdict: NOT hard-blocked — provisional pass as modern-bred OP
under §3.2.4 (items 1–3 clearly pass).** Label honestly as a
modern dehybridised OP, not a pre-modern heirloom. Utility-patent
prong not formally searched (project-wide open item); EUIPO/WIPO
not searched.

### §3 gate

- **§3.2.1 — pass.** Plain name, no ™/® on opened pages at
  [High Mowing](https://www.highmowingseeds.com/organic-non-gmo-peacevine-cherry-tomato-a.html),
  [Fedco](https://fedcoseeds.com/seeds/peacevine-organic-cherry-tomato-4119),
  [Reimer](https://www.reimerseeds.com/peacevine-cherry-tomato-seeds),
  Hudson Valley Seed, Restoration Seeds; university reference at
  [Cornell CCE](https://vegvariety.cce.cornell.edu/main/detail.php?variety_id=1657&filterBy=0);
  breeder-successor Peace Seedlings also lists it plainly.
- **§3.2.2 USPTO — PASS; executed 2026-11-21** via official
  search backend (`prod-stage-v1-0-0/tmsearch`): `WM:"PEACEVINE"`
  = **0** in any class/status; live, live+IC 031, and live+goods
  tomato/seeds queries all **0** (positive controls SAN MARZANO /
  SUNGOLD / APPLE returned hits). Spaced variant has one dead,
  unrelated mark: "PEACE + VINE" Serial 77810374, IC 003 skincare,
  abandoned 2012 (TSDR-verified).
- **PVP — PASS.** POD API `varietyName=Peacevine` → `[]` (twice),
  consistent with the USDA status-report 0 hits. CMS form not
  independently executed for this name.
- **§3.2.3 — pass, unusually strong.** No exclusivity anywhere;
  originators actively disclaim ownership — Kapuler bred "for the
  public domain"; Peace Seedlings: Peace Seeds put "all of their
  new breeding in the Public Domain… open-pollinated and public
  domain". Note: Fedco flags "Breeder Royalties: Yes" — Fedco's
  *voluntary* payment practice, not PVP/licence/name claim.
- **§3.2.4 — pass as recently-bred OP.** Alan Kapuler's
  dehybridised selection of Sweet 100 (decade of yearly seed
  saving from 1970s F1 grow-outs; >3 decades as Peacevine by
  2006), renamed after Peto's "Sweet 100" trademark
  cease-and-desist ([Wild Garden account](https://www.wildgardenseed.com/articles/ip-ambiguity-and-its-impact-on-organic-seed-availability)).
  Sold everywhere as true-to-type OP. Minor stability caveat:
  occasional yellow/orange-gold off-type fruit reported (Cornell,
  Reimer) — not a segregation failure; do not depict gold fruit
  (would read as Sungold). Name references high GABA content.

### Data

- **Type/habit/leaf:** cherry; indeterminate/rampant (unanimous);
  leaf not stated by trusted sources — regular-leaf default.
- **Weight:** High Mowing and Reimer both 0.5–1 oz → **range
  0.5–1.0 oz, midpoint 0.75 oz**. Diameter ~1″ (¾″ at some
  resellers — variance noted, not a formula input).
- **DTM:** Cornell 70–80 (unstated); High Mowing 78 from
  transplant; Fedco 78 (unstated); Reimer 75 (unstated);
  Restoration 65–75 from transplant. **Range 65–80, midpoint
  73.** Basis unstated at 3/5 sources — flagged, but conversion
  is insensitive (below).
- **Conversions (indicative):** StardewDays **11** (phases
  2,2,2,2,3); SellPrice ≈ **30g**, SeedPrice ≈ **25g** (range
  ends 25g at 0.5 oz, 30g at 1.0 oz). Below 100g: no raw-fruit
  Loved gifts. **Yield provisional:** 1 fruit/4d lands below the
  §8 band (~0.5× vanilla); **2 fruit per harvest, 4-day regrow**
  (~1.1× vanilla) is the conservative in-band model — settle one
  cherry-wide model with Sungold so Peacevine doesn't step on
  Sungold's early/high-frequency niche.
- **Recipe:** cherry → Heirloom Cherry Salad (§7.5) — the OP red
  cherry that de-risks that recipe if Sungold ever falls.
- **Sprite:** small *cluster* of ~3 tiny round crimson balls on a
  shared stem (vs Sungold's single orange globe), fruit ~1px
  larger than Sungold's (0.75 vs 0.56 oz). Crop: short dense
  trusses of ~8–10 small red fruit (Fedco/Cornell/Reimer/Hudson
  Valley cluster claims) vs Sungold's long 10–15-fruit trusses;
  plain regular foliage, vigorous spread. No stripes/shoulders/
  ribbing to draw.

**Outstanding:** cherry yield model decision with Sungold;
utility-patent prong decision (project-wide); §8 check under the
final harvest-count convention.

---

## Amish Paste (addition, researched 2026-11-21)

Author-selected second paste. **Verdict: NOT hard-blocked
(provisional).** Legal gate passes on all executed searches.
Pending: utility-patent prong (project-wide), a weight/DTM
population decision (below — it flips the 100g gift row), §8
both-ends check.

### §3 gate

- **§3.2.1 — pass, many times over.** Plain name, no ™/®, at
  [Cornell CCE 1616](http://vegvariety.cce.cornell.edu/main/detail.php?variety_id=1616&filterBy=0)
  (tier 1), [Seed Savers Exchange](https://shop.seedsavers.org/amish-paste-organic-tomato)
  (tier 2), Johnny's, Fedco, Victory, Hudson Valley, True Leaf.
- **§3.2.2 USPTO — PASS; executed 2026-11-21** via official
  search backend: `WM:"AMISH PASTE"` = **0 in any status** — no
  such mark exists; live/IC 031/goods variants all 0. Sole live
  IC 031 AMISH-token mark is THE AMISH ECO-FARM (Serial 97037765,
  design; TSDR-verified goods: fresh peanuts/raw oats only,
  wordmark disclaimed) — different name and goods.
- **PVP — PASS.** POD API `varietyName=Amish Paste`/`Amish` →
  `[]`; tomato browse (612 rows) substring "amish" → 0;
  corroborates status-report 0 hits. Utility patent not searched.
- **§3.2.3 — pass.** No exclusivity claim; SSE's "Tom Hauch
  commercialized this variety in 1990" is an introduction vector;
  ≥6 unrelated sellers; no branded strain found.
- **§3.2.4 — OP/heirloom standing pass; origin UNRESOLVED.**
  Standing is unanimous, but Wisconsin- and Lancaster-origin
  accounts conflict on direction (Cornell hedged "reported…
  Wisconsin"; SSE says acquired near Lancaster PA, commercialized
  1990; Slow Food Ark reverses it; only Tatiana's reconciles via
  Medford WI → Lancaster → 1987 SSE Yearbook by Thane Earle).
  Firmest facts: 1987 SSE Yearbook circulation + Hauch 1990.
  **Use neutral wording** — "an Amish heirloom in Seed Savers
  circulation since the late 1980s"; assert neither Medford WI
  nor Lancaster PA as settled origin; USDA accession G 33010
  exists but is not origin evidence. Two introduction vectors
  (Earle WI / Hauch PA) may explain the strain divergence below.

### Data

- **Type/habit/leaf:** paste (oxheart-to-plum; juicy/dual-purpose
  per Victory/Hudson Valley, but catalogue type is unambiguously
  paste); indeterminate (unanimous; one "det." grower report
  excluded as off-type); regular, wispy leaf (low-tier — texture
  cue only).
- **DTM/weight ⚠️ BIMODAL — decide as a pair.** Large line:
  SSE/Johnny's 8–12 oz, 85d from transplant. Wider-circulation
  line: Cornell/Victory ~8 oz point, True Leaf 6–8 oz, Fedco
  "**up to** 8 oz" (a maximum — do not pool as typical), growers
  4–8 oz / 74–75d. Mechanical §6.2 pooling (Fedco max excluded):
  **DTM range 74–90, midpoint 82; weight range 6–12 oz, midpoint
  9.0 oz.** Population options: (A) SSE-line 8–12 oz/85d;
  (B) wider line ~6–8 oz/74–85d; (C) pooled 9 oz/82d (provisional
  figures below).
- **Conversions (indicative, pooled):** StardewDays **12**
  (2,2,2,2,4; robust for DTM 80–85; early 74–75 line would give
  11); regrow 4d ×1. SellPrice at 9 oz ≈ **105g**, SeedPrice
  **85g**. Range ends: 6 oz → 85g; 8 oz → 100g (exactly on the
  threshold after round5); 12 oz → 120g; 4 oz grower low → 70g.
- **Gift ⚠️ flips with the population decision:** at ≥8 oz
  (≥100g) paste → Loved by Leah/Maru/Demetrius **and Gus**; at
  ≤7 oz (95g) → nobody. Do not record the Loved set until the
  population is chosen.
- **Recipe:** paste → Heirloom Tomato Bisque (§7.6) + tentative
  Heirloom Tomato Shakshuka (§7.7).
- **§8 preview vs San Marzano:** same 12 days + 4d regrow, higher
  price (105g vs San Marzano's chosen-weight ~70g), higher one-time
  seed cost — not strictly dominant (not earlier/higher-yielding),
  in-band at all ends (~1.08–1.54× vanilla vs San Marzano ~0.90× at
  its chosen weight — the §8 band floor; its formal both-ends check
  is still to run). Sprite distinction is what keeps the two pastes
  from reading as reskins.
- **Sprite:** uniform bright/deep red (ignore one "red-orange"
  outlier). Fat **oxheart/teardrop**: broad shoulders tapering
  to a pointed, nippled blossom end (Fedco "mostly nippled") —
  unlike San Marzano's slim plum and unlike flattened beefsteaks;
  visibly bulkier than San Marzano. Crop: clusters of 2–4
  (Victory), wispy/sparse regular foliage, sprawling habit.

**Outstanding:** author population decision (A/B/C above) +
consequent gift row; §8 at 6 and 12 oz; utility-patent decision;
optional Carolyn Male (1999) print corroboration.

Sources include:
[Cornell 1616](http://vegvariety.cce.cornell.edu/main/detail.php?variety_id=1616&filterBy=0),
[Seed Savers](https://shop.seedsavers.org/amish-paste-organic-tomato),
[Johnny's](https://www.johnnyseeds.com/vegetables/tomatoes/paste-tomatoes/amish-paste-organic-tomato-seed-3817G.53.html),
[Fedco](https://fedcoseeds.com/seeds/amish-paste-organic-paste-tomato-4140),
[Victory](https://victoryseeds.com/products/amish-paste-tomato),
[Slow Food Ark](https://www.fondazioneslowfood.com/en/ark-of-taste-slow-food/amish-paste-tomato/),
USPTO search backend + TSDR Serial 97037765, USDA POD API.

---

## Assessment: keep, trim, add

### Is the list enough?

By count, yes; by composition, no. The provisional survivors span only
9–12 Stardew days, and three of them (Mortgage Lifter, Black Krim,
Pineapple — Brandywine now excluded) are indeterminate beefsteaks
converting to **the same 12 days** with indicative prices of
120–170g — same timing, same regrow, differentiated by price and
sprite only. Under §8, the most expensive threatens to strictly
dominate the others on return per plant. Meanwhile:

- **Paste originally had one entry** (San Marzano) — now joined by
  researched Amish Paste (provisional pass; population decision
  pending), so Bisque no longer rests on one variety; tentative
  §7.7 Shakshuka would give both pastes a second, hearty cooked use.
- **Cherry originally had one entry** (Sungold) — now joined by
  researched Peacevine (provisional pass), de-risking Cherry Salad.
- **No early variety** except that cherry — 4th of July's slot is
  empty, and nothing else converts below vanilla's 11 days except
  Sungold (9).
- **No determinate variety at all** — every survivor is
  indeterminate, so the §4.3 determinate model would go untested.
- **Beefsteak colours** are pink, dark, and bicolor — no classic
  red slicer (Red Brandywine is a different variety; see Brandywine
  strain table). Not essential, noted for completeness.

### Trim

- **Kellogg's Breakfast — drop regardless of its legal outcome.**
  A fifth 12-day orange beefsteak overlapping Pineapple's palette;
  it costs sprite/balance work for no new gameplay.
- **Mortgage Lifter is now the pink beefsteak by default.**
  Author leaning (2026-11-21): exclude Brandywine and let
  Pineapple + Mortgage Lifter carry the huge-slicer slot (Black
  Krim remains the dark beefsteak). Brandywine's TSDR scoping (2026-11-21) did **not** clear it
  under §3.2.2 as written (live word-only "PLANTS" registration;
  crabapple use does not narrow the goods), so the earlier
  "prefer Brandywine if cleared" no longer applies unless the
  author re-scopes §3.2.2 by recorded decision. Cost of losing
  Brandywine: no potato-leaf crop in v1 (an early potato-leaf
  addition such as Stupice could restore that sprite interest).
  Mortgage Lifter's 16–40+ oz spread remains the least trustworthy
  weight data in the set and drives its §8 check.
- **Green Zebra — locked in v1, recipe decided lean (author,
  2026-11-21).** Retained as the eighth variety, superseding the
  earlier conditional-keep/cut recommendation. Recipe: Heirloom
  Caprese via the beefsteak/slicing extension (requirements §7.3) —
  it is no longer a recipe orphan, no separate saladette/onion dish
  is pursued, and it must not be silently reclassified as a
  beefsteak. Menu balance is instead provided by tentative §7.7
  Shakshuka (second cooked paste dish; 2 fresh + 2 cooked).

### Add — post-v1/stretch only (research first — none is pre-cleared)

The v1 list is locked at eight (above); nothing in this subsection is
part of v1. Each post-v1 addition needs a new recorded author
decision plus its own §9 subagent pass (§3 gate first, then
type/weight/DTM/sprite) before it can be treated as a candidate:

1. **Post-v1: an early open-pollinated slicer** to fill the 4th of
   July slot (~50–55d → 9–10 Stardew days) — research Stupice first
   (early and potato-leaf, which would also reuse the Brandywine
   foliage work), then Glacier / Bloody Butcher / Oregon Spring /
   Siberian. Not yet researched; not required for v1 asset work.
2. ✅ **Peacevine — researched 2026-11-21, provisional pass**
   (see its entry): Alan Kapuler's dehybridised OP Sweet 100,
   renamed *because* Peto claimed "Sweet 100" as a trademark;
   USPTO wordmark search 0 hits in any class; PVP clear. Author
   selected 2026-11-21. Backup if ever needed: Chadwick Cherry.
3. ✅ **Amish Paste — researched 2026-11-21, provisional pass**
   (see its entry): USPTO exact search 0 hits in any status; PVP
   clear; author selected 2026-11-21. Its population decision
   (large SSE-line vs wider line vs pooled) is recorded in its
   entry. Not selected this round: **(b) Roma first for
   gameplay difference** — USDA Beltsville OP release (1955,
   San Marzano parentage), **determinate** compact bush, ~73–80d,
   small egg/plum fruit; the only candidate giving the mod a
   determinate habit model, and the author already grows it; care
   needed to source the generic OP Roma, not hybrid/VF branded
   strains, and "Roma" is also a type word (only Roma-named tomato
   PVP hit is the distinct modern Midnight Roma, cert. issued
   2023 — avoid that name/strain). **(c) Opalka as sprite pick** —
   Polish family heirloom (c.1900 via Amsterdam NY; USDA PI
   701101), indeterminate with wispy foliage, elongated
   pepper-shaped red fruit in clusters of 3–5, ~80–90d.

**Locked v1 (author, 2026-11-21) — eight varieties:** San Marzano +
Amish Paste (pastes), Mortgage Lifter + Black Krim + Pineapple
(beefsteaks; Brandywine excluded unless §3.2.2 is re-scoped by a new
recorded decision), Sungold + Peacevine (cherries), and Green Zebra
(saladette slicer; Caprese-eligible under the lean beefsteak/slicing
decision — see its entry). An early slicer is the first post-v1/stretch
addition (Roma separately if a determinate model is ever wanted);
neither is part of the locked v1 list.

---

## The formal searches (do these before approving any variety)

Per requirements §3.2 item 2 (and §3.1 on PVP/patents), a human must
record, **with search date and result**, for each pending variety:

1. **USPTO Trademark Search** — <https://tmsearch.uspto.gov/>
   (TESS was retired 2023-11-30; this is its successor). Search the
   **exact variety name and its spelling variants**, status = **live**,
   and check whether any live mark covers **tomato seeds, plants, or
   produce** (International Class 31; also glance at Classes 29/30
   processed tomato goods where an entry flags them). Record the
   query, date, and any serial/registration numbers found — or the
   explicit no-relevant-hit result. For marks an entry already
   identified, pull the **TSDR** record to confirm status and goods
   as registered.
2. **USDA Plant Variety Protection** — search for the **exact
   variety name**, tomatoes, in the PVP Certificate Management
   System (`apps.ams.usda.gov/CMS/`), the PVPO Online Dashboard
   (`pvpo.scinet.usda.gov`), and/or the monthly *US PVP Application
   Status Report* spreadsheet (ams.usda.gov → PVPO Application
   Status), which lists all applications with certificate status.
   Record date and result: no certificate, or an in-force certificate
   (= exclude), or an expired one (note number and expiry).
   **Done 2026-11-21 for all seven pursued varieties** via the
   status report (Last-Modified 2026-11-04; 18,361 applications,
   231 tomato): no relevant certificate/application for any of
   them — see per-entry PVP lines, anchored in the San Marzano
   entry with the file hash.

Variety-specific search list:

| Variety | USPTO query (live, Class 31 focus) | Extra step |
|---|---|---|
| San Marzano | `SAN MARZANO` | ✅ **USPTO done 2026-11-21 — PASS** via official TSDR + search backend (0 live IC 031; disclaimers/goods for Regs. 3210945/5027259/4386357 confirmed; live word-only mark is wine IC 033 only; see entry incl. literal-"produce" fork). Still to do: dated human EUIPO/TMview + WIPO GBD name search (browserless attempts failed: captcha/WAF/JS shells; mirror evidence found no Nice 31 blocker). USDA PVP ✅ done 2026-11-21, clear |
| Mortgage Lifter | `MORTGAGE LIFTER` (Classes 29/30/31) | ✅ **Trademark search done and inspected 2026-11-21 — all clear** (15 hits; the 3 tomato-relevant Beekman 1802 marks are Dead; see entry). Export at `/home/kathleen/code/tm-research/mortgagelifter.xlsx`. USDA PVP ✅ done 2026-11-21, clear |
| Black Krim | `BLACK KRIM` | ✅ **Done and inspected 2026-11-21 — all clear** (first 50 hits contain no Krim/Crimea mark at all; see entry). Export at `/home/kathleen/code/tm-research/krim.xlsx`. USDA PVP ✅ done 2026-11-21, clear |
| Sungold | `SUNGOLD` and `SUN GOLD` | ✅ **Both done and inspected 2026-11-21 — all clear for tomato scope** (Live Zespri mark is kiwifruit-only; grass-seed mark is Dead; all exact SUN GOLD marks Dead; see entry). Exports at `/home/kathleen/code/tm-research/sungold1word.xlsx` + `sungold2word.xlsx`. USDA PVP ✅ done 2026-11-21, clear (sole "Sun Gold" hit = expired watermelon cert. 8200061) |
| Green Zebra | `GREEN ZEBRA` | ✅ **Done and inspected 2026-11-21 — all clear** (only exact hit Serial 76247708 is Dead, snack foods; see entry). Export at `/home/kathleen/code/tm-research/greenzebra.xlsx`. USDA PVP ✅ done 2026-11-21, clear |
| Pineapple | `PINEAPPLE` narrowed to tomato seeds/plants | ✅ **Done and inspected 2026-11-21 — all clear for IC 031 scope** (38 hits, no PINEAPPLE-alone wordmark, nothing for tomato seed/plants/fruit; see entry). Export at `/home/kathleen/code/tm-research/pineapple.xlsx`. USDA PVP ✅ done 2026-11-21, clear |
| Brandywine | `BRANDYWINE` | ❌ **TSDR scoping done 2026-11-21 — did NOT clear.** Live word-only Reg. 1112854 for unqualified "PLANTS" (crabapple use does not narrow goods); stays **DOUBTFUL → exclude** unless §3.2.2 is re-scoped by recorded author decision. USDA PVP ✅ done 2026-11-21, clear (moot) |
| Kellogg's Breakfast | `KELLOGG'S BREAKFAST` and `KELLOGG` in Class 31 | **Deprioritised** (author leaning, 2026-11-21: Pineapple fills this niche; see variety entry). Only if revisited: the question is whether **any** live KELLOGG mark covers tomato seeds/plants/fresh produce; consider legal advice even on a clean-looking result |

No formal search is needed for Sweet 100 or 4th of July unless the
author decides to revisit them: both are excluded on grounds a clean
trademark search would not cure (documented trademark
claim/enforcement and §3.4 failure; exclusive F1 introduction and
§3.4 failure, respectively).

## What else is still open before any `content.json` work

- **San Marzano:** dated human EUIPO/TMview + WIPO Global Brand
  Database search (incl. re-confirming EUTM 018893642); author
  recording of the §3.2.2 literal-"produce" reading adopted.
- **All pursued varieties:** the §3.1 **utility-patent** prong was
  not formally searched (PVP routes do not cover USPTO patents) —
  decide whether a patent search is required to sign §9, or record
  why variety-research evidence suffices.
- **Brandywine:** excluded unless the author records a §3.2.2
  re-scoping decision (actual-use vs registered goods) or obtains
  legal advice — no further searching closes it.
- §8 balance checks at both range ends for every ⚠️ entry, then
  final §5 prices and §7 gift/recipe recording per variety.
- Cherry yield/regrow model (§4.3) settled jointly for Sungold
  and Peacevine (Peacevine provisional: 2 fruit / 4 days).
- Tentative Shakshuka settlement (requirements §7.7): unlock
  sender/hearts, Loved recipients, and exact numbers within its
  working bands — only blocks that dish, not the settled three.
  (Green Zebra's recipe category is decided: Caprese via slicing.)
- Amish Paste population decision (entry) and its consequent
  100g gift row; §8 at 6 and 12 oz.
- (Post-v1 only, not blocking v1) Research pass for an early OP
  slicer (Stupice first) — not part of the locked v1 list.
