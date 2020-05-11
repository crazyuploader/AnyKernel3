#!/usr/bin/env bash

echo "Pulling Anykernel3 from my GitHub..."
echo ""
git clone https://${GITHUB_REF} temp
cd temp
git reset --hard HEAD~1
git fetch https://github.com/osm0sis/AnyKernel3.git
echo ""
git config user.email "49350241+crazyuploader@users.noreply.github.com"
git config user.name "crazyuploader"
git merge FETCH_HEAD
echo ""
git push https://crazyuploader:"${GITHUB_TOKEN}"@"${GITHUB_REF}" HEAD:master
echo ""
echo "Done"
