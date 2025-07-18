#!/usr/bin/env sh

set -e

hugo

cd public

git init
git config user.name "${GIT_USER_NAME}"
git config user.email "${GIT_USER_EMAIL}"

git add -A
git commit -m "Deploying application"

git push -f https://x-access-token:${GH_TOKEN}@github.com/troll-warlord/tictactech.git master:live