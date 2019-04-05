#!/bin/bash
set -ev

iconutil --convert icns --output Universal.bundle/Contents/Resources/English\ -\ Universal.icns English.iconset
iconutil --convert icns --output Universal.bundle/Contents/Resources/Russian\ -\ Universal.icns Russian.iconset

touch Universal.bundle

sudo rm -rf /Library/Keyboard\ Layouts/Universal.bundle
sudo cp -r Universal.bundle /Library/Keyboard\ Layouts/