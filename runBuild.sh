#!/usr/bin/env bash

SECONDS=0
# run build
xcodebuild clean build -project $XCODE_PROJECT -scheme $XCODE_SCHEME -sdk iphonesimulator -destination 'platform=iOS Simulator,name=iPhone 14 Pro,OS=16.2' -configuration Debug CODE_SIGN_IDENTITY="" CODE_SIGNING_REQUIRED=NO CODE_SIGNING_ALLOWED=NO

duration=$SECONDS
BUILD_TIME="$(($duration / 60))m $(($duration % 60))s"
echo $BUILD_TIME > build_time