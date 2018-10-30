#!/bin/bash
set -ev

iconutil --convert icns --output Universal.bundle/Contents/Resources/English\ -\ Universal.icns English\ Light.iconset
iconutil --convert icns --output Universal.bundle/Contents/Resources/Russian\ -\ Universal.icns Russian\ Light.iconset
iconutil --convert icns --output Universal.bundle/Contents/Resources/English\ -\ Universal\ Dark.icns English\ Dark.iconset
iconutil --convert icns --output Universal.bundle/Contents/Resources/Russian\ -\ Universal\ Dark.icns Russian\ Dark.iconset

touch Universal.bundle

rm -f UniversalLayout_1.1.zip
zip -rq9 UniversalLayout_1.1.zip Universal.bundle README.md CHANGELOG.md LICENSE Layout.png

rm -rf ~/Library/Keyboard\ Layouts/Universal.bundle
cp -r Universal.bundle ~/Library/Keyboard\ Layouts/

