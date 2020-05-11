#!/usr/bin/env bash

echo "Pulling Anykernel3 from my GitHub..."
echo ""
git clone https://${GITHUB_REF} temp
cd temp
git fetch https://github.com/osm0sis/AnyKernel3.git
echo ""
git merge FETCH_HEAD
git config user.email "49350241+crazyuploader@users.noreply.github.com"
git config user.name "crazyuploader"
echo ""
git push https://crazyuploader:"${GITHUB_TOKEN}"@"${GITHUB_REF}" HEAD:master
echo ""
echo "Done"