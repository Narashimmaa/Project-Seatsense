# Contributing to SeatSense

## Branches

| Branch | Purpose |
|---|---|
| `main` | Stable, demo-ready version. This is what GitHub Pages serves. Only merge here from `develop`. |
| `develop` | Where finished features are combined and tested before going to `main`. |
| `feature/backend-api` | Server, database and booking logic |
| `feature/netid-login` | SRM NetID single sign-on |
| `feature/guard-scanner` | Guard scanning app / camera QR scan |
| `feature/cctv-occupancy` | AI seat detection on existing CCTV |
| `feature/admin-dashboard` | Usage data for library and administration |
| `docs` | Pitch deck, report and README updates |

Create a new branch for each piece of work, named `feature/<short-name>` or `fix/<short-name>`. Never commit straight to `main`.

## Workflow

1. `git checkout develop && git pull`
2. `git checkout -b feature/<short-name>`
3. Make changes, then `git add . && git commit -m "Short clear message"`
4. `git push -u origin feature/<short-name>`
5. Open a Pull Request into `develop` and ask a teammate to review.
6. When `develop` is tested, open a Pull Request from `develop` into `main`.

## Commit messages

Start with a verb, keep it short: `Add guard scan screen`, `Fix seat release timer`, `Update README screenshots`.
