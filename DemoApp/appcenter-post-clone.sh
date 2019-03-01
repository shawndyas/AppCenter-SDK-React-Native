#!/usr/bin/env bash
echo "Executing post clone script in `pwd`"
echo $NPM_RC | base64 --decode > $APPCENTER_SOURCE_DIRECTORY/DemoApp/.npmrc
# Delete everything except DemoApp folder
rm -rf ../appcenter* ../AppCenterReactNativeShared ../TestApp34 ../BrownfieldTestApp ../TestApp

NODE_VERSION="10.15.1"
npm config delete prefix
. ~/.bashrc
nvm install "$NODE_VERSION"
#nvm unalias default
nvm alias node8 "$NODE_VERSION"
