## [26.7.0] - 2026-07-03

**Upstream Release:** [26.7.0](https://github.com/jhonderson/actual-http-api/releases/tag/26.7.0)

## What's Changed
* chore: bump js-yaml from 4.2.0 to 5.0.0 by @dependabot[bot] in https://github.com/jhonderson/actual-http-api/pull/104
* chore: bump js-yaml from 5.0.0 to 5.1.0 by @dependabot[bot] in https://github.com/jhonderson/actual-http-api/pull/105
* chore: bump js-yaml from 5.1.0 to 5.2.0 by @dependabot[bot] in https://github.com/jhonderson/actual-http-api/pull/106
* feat: Add consolidated account balances endpoint with optional filtering by @patterueldev in https://github.com/jhonderson/actual-http-api/pull/55
* chore: bump js-yaml from 5.2.0 to 5.2.1 by @dependabot[bot] in https://github.com/jhonderson/actual-http-api/pull/107
* chore: bump @actual-app/api from 26.6.0 to 26.7.0 by @dependabot[bot] in https://github.com/jhonderson/actual-http-api/pull/108


**Full Changelog**: https://github.com/jhonderson/actual-http-api/compare/26.6.1...26.7.0

---


## [26.6.1] - 2026-06-09

**Upstream Release:** [26.6.1](https://github.com/jhonderson/actual-http-api/releases/tag/26.6.1)

## What's Changed
* fix: [C5] fix export endpoint broken by archiver v8 ESM upgrade by @x-rous in https://github.com/jhonderson/actual-http-api/pull/92
* fix: [C1] replace forEach with for...of in deleteTransactions by @x-rous in https://github.com/jhonderson/actual-http-api/pull/88
* fix: [C2] replace internal note API usage with official getNote/updateNote by @x-rous in https://github.com/jhonderson/actual-http-api/pull/89
* fix: [C3] parse cutoff_date as local Date to avoid UTC timezone offset by @x-rous in https://github.com/jhonderson/actual-http-api/pull/90
* fix: [C4] use URL ruleId as authoritative source in updateRule route by @x-rous in https://github.com/jhonderson/actual-http-api/pull/91
* fix: [P1] forward initialBalance in createAccount by @x-rous in https://github.com/jhonderson/actual-http-api/pull/93
* fix: [P2] forward hidden filter in getCategories and getCategoryGroups by @x-rous in https://github.com/jhonderson/actual-http-api/pull/94
* fix: [P3] forward resetNextDate in updateSchedule by @x-rous in https://github.com/jhonderson/actual-http-api/pull/95
* chore: [P5][D6] fix budget month Swagger schema accuracy by @x-rous in https://github.com/jhonderson/actual-http-api/pull/96
* fix: [M3] swap deprecated runQuery for official aqlQuery internally by @x-rous in https://github.com/jhonderson/actual-http-api/pull/100
* feat: [M2] expose getCommonPayees as GET /common-payees endpoint by @x-rous in https://github.com/jhonderson/actual-http-api/pull/98
* feat: [M1] expose getIDByName as GET /id-by-name endpoint by @x-rous in https://github.com/jhonderson/actual-http-api/pull/97

**Full Changelog**: https://github.com/jhonderson/actual-http-api/compare/26.6.0...26.6.1

---


## [26.6.0] - 2026-06-03

**Upstream Release:** [26.6.0](https://github.com/jhonderson/actual-http-api/releases/tag/26.6.0)

## What's Changed
* chore: bump archiver from 7.0.1 to 8.0.0 by @dependabot[bot] in https://github.com/jhonderson/actual-http-api/pull/83
* chore: bump jest from 30.4.0 to 30.4.2 by @dependabot[bot] in https://github.com/jhonderson/actual-http-api/pull/84
* chore: bump swagger-jsdoc from 6.2.8 to 6.3.0 by @dependabot[bot] in https://github.com/jhonderson/actual-http-api/pull/85
* chore: bump js-yaml from 4.1.1 to 4.2.0 by @dependabot[bot] in https://github.com/jhonderson/actual-http-api/pull/86
* Bumping actual nodejs api version from 26.5.2 to 26.6.0

**Full Changelog**: https://github.com/jhonderson/actual-http-api/compare/26.5.2...26.6.0

---


## [26.5.2] - 2026-05-10

**Upstream Release:** [26.5.2](https://github.com/jhonderson/actual-http-api/releases/tag/26.5.2)

## What's Changed
* chore: bump jest from 30.3.0 to 30.4.0 by @dependabot[bot] in https://github.com/jhonderson/actual-http-api/pull/82

**Full Changelog**: https://github.com/jhonderson/actual-http-api/compare/26.5.0...26.5.2

Use `docker pull jhondersonyy/actual-http-api:26.5.2` or `docker pull jhonderson/actual-http-api:latest`

---


## [26.5.0] - 2026-05-05

**Upstream Release:** [26.5.0](https://github.com/jhonderson/actual-http-api/releases/tag/26.5.0)

## What's Changed
* feat: Add endpoints to set and delete notes by @ansidian in https://github.com/jhonderson/actual-http-api/pull/75
* chore: bump dotenv from 17.4.1 to 17.4.2 by @dependabot[bot] in https://github.com/jhonderson/actual-http-api/pull/76
* chore: enhance importTransactions to accept options for defaultCleare… by @cgrinds in https://github.com/jhonderson/actual-http-api/pull/79
* chore: bump @actual-app/api from 26.4.0 to 26.5.0 by @dependabot[bot] in https://github.com/jhonderson/actual-http-api/pull/80

## New Contributors
* @ansidian made their first contribution in https://github.com/jhonderson/actual-http-api/pull/75
* @cgrinds made their first contribution in https://github.com/jhonderson/actual-http-api/pull/79

**Full Changelog**: https://github.com/jhonderson/actual-http-api/compare/26.4.0...26.5.0

Use `docker pull jhondersonyy/actual-http-api:26.5.0` or `docker pull jhonderson/actual-http-api:latest`

---


## [26.4.0] - 2026-04-07

**Upstream Release:** [26.4.0](https://github.com/jhonderson/actual-http-api/releases/tag/26.4.0)

## What's Changed
* chore: bump jest from 30.2.0 to 30.3.0 by @dependabot[bot] in https://github.com/jhonderson/actual-http-api/pull/66
* fix bug in deleteRule function parameter Fixes #67 by @x-rous in https://github.com/jhonderson/actual-http-api/pull/68
* chore: bump dotenv from 17.3.1 to 17.4.0 by @dependabot[bot] in https://github.com/jhonderson/actual-http-api/pull/69
* chore: bump dotenv from 17.4.0 to 17.4.1 by @dependabot[bot] in https://github.com/jhonderson/actual-http-api/pull/73
* chore: bump @actual-app/api from 26.3.0 to 26.4.0 by @dependabot[bot] in https://github.com/jhonderson/actual-http-api/pull/74

## New Contributors
* @x-rous made their first contribution in https://github.com/jhonderson/actual-http-api/pull/68

**Full Changelog**: https://github.com/jhonderson/actual-http-api/compare/26.3.0...26.4.0

Use `docker pull jhondersonyy/actual-http-api:26.4.0` or `docker pull jhonderson/actual-http-api:latest`

---


## [26.3.0] - 2026-03-08

**Upstream Release:** [26.3.0](https://github.com/jhonderson/actual-http-api/releases/tag/26.3.0)

Changes:
- Upgrading actual-api dependency to version `26.3.0`
- use Actual‑QL for accounts/balancehistory to make it more efficient

Use `docker pull jhondersonyy/actual-http-api:26.3.0` or `docker pull jhonderson/actual-http-api:latest`

---


## [26.2.1] - 2026-02-25

**Upstream Release:** [26.2.1](https://github.com/jhonderson/actual-http-api/releases/tag/26.2.1)

Changes:
- Upgrading actual-api dependency to version `26.2.1`
- Added run-query route by @snqyz in https://github.com/jhonderson/actual-http-api/pull/56

Use `docker pull jhondersonyy/actual-http-api:26.2.1` or `docker pull jhonderson/actual-http-api:latest`

---


## [26.2.0] - 2026-02-04

**Upstream Release:** [26.2.0](https://github.com/jhonderson/actual-http-api/releases/tag/26.2.0)

Changes:
- Adding support for custom host and port for swagger through environment variables (thanks to @PhilRW)
- Upgrading actual-api dependency to version `26.2.0` (thanks to @kvakulo)

Use `docker pull jhondersonyy/actual-http-api:26.2.0` or `docker pull jhonderson/actual-http-api:latest`

---


## [26.1.0] - 2026-01-07

**Upstream Release:** [26.1.0](https://github.com/jhonderson/actual-http-api/releases/tag/26.1.0)

Changes:
- Add support for merging payees (thanks to [snqyz](https://github.com/snqyz) 🎉)
- Upgrading actual-api dependency to version `26.1.0`

Use `docker pull jhonderson/actual-http-api:26.1.0` or `docker pull jhonderson/actual-http-api:latest`

---


## [25.12.0] - 2025-12-04

**Upstream Release:** [25.12.0](https://github.com/jhonderson/actual-http-api/releases/tag/25.12.0)

Changes:
- Add support for deleting transactions in batch
- Add support for secrets
- Upgrading actual-api dependency to version `25.12.0`

Use `docker pull jhonderson/actual-http-api:25.12.0` or `docker pull jhonderson/actual-http-api:latest`

---


