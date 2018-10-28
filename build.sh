#!/bin/bash
set -ev

iconutil --convert icns --output Universal.bundle/Contents/Resources/English\ -\ Universal.icns English\ Light.iconset
iconutil --convert icns --output Universal.bundle/Contents/Resources/Russian\ -\ Universal.icns Russian\ Light.iconset
touch Universal.bundle

rm -rf Universal\ Darl.bundle
cp -r Universal.bundle Universal\ Dark.bundle

iconutil --convert icns --output Universal\ Dark.bundle/Contents/Resources/English\ -\ Universal.icns English\ Dark.iconset
iconutil --convert icns --output Universal\ Dark.bundle/Contents/Resources/Russian\ -\ Universal.icns Russian\ Dark.iconset
touch Universal\ Dark.bundle

rm -f UniversalLayout_1.0.zip
zip -rq9 UniversalLayout_1.0.zip Universal.bundle Universal\ Dark.bundle README.md CHANGELOG.md LICENSE Layout.png

rm -rf ~/Library/Keyboard\ Layouts/Universal*.bundle
cp -r Universal.bundle ~/Library/Keyboard\ Layouts/

