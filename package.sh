#!/bin/bash
set -ev

./build.sh

rm -f UniversalLayout_1.2.zip
zip -rq9 UniversalLayout_1.2.zip Universal.bundle README.md CHANGELOG.md LICENSE Layout.png
