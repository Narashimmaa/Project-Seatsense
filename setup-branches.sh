#!/usr/bin/env bash
# Creates the standard SeatSense branches and pushes them to GitHub.
# Run this ONCE, inside your cloned repository, after your first commit on main.
#
#   bash setup-branches.sh

set -e

BRANCHES=(
  develop
  docs
  feature/backend-api
  feature/netid-login
  feature/guard-scanner
  feature/cctv-occupancy
  feature/admin-dashboard
)

git checkout main
git push -u origin main

for b in "${BRANCHES[@]}"; do
  git branch "$b" main
  git push -u origin "$b"
  echo "created $b"
done

git checkout develop
echo "Done. You are now on 'develop'."
