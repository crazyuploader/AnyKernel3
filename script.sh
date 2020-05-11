#!/usr/bin/env bash

echo "Pulling Anykernel3 from my GitHub..."
echo ""
git clone https://${GITHUB_REF} temp
cd temp
git fetch https://github.com/osm0sis/AnyKernel3.git
git merge FETCH_HEAD