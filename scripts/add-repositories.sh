#! /bin/bash

REPOS=(
  https://download.opensuse.org/repositories/mozilla/16.0/mozilla.repo
  https://download.opensuse.org/repositories/graphics/16.0/graphics.repo
)

echo "Adding repositories..."
for repo in "${REPOS[@]}"; do
  sudo zypper addrepo "$repo"
done

echo "Repositories added."
