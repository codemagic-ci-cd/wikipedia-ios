#!/usr/bin/env bash

SECONDS=0
# run tests
time xcodebuild clean test -project $XCODE_PROJECT -scheme $XCODE_SCHEME -sdk iphonesimulator -destination 'platform=iOS Simulator,name=iPhone 14 Pro,OS=16.2'

duration=$SECONDS
TESTS_TIME="$(($duration / 60))m $(($duration % 60))s"
echo $TESTS_TIME > tests_time