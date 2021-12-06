#!/bin/sh
if [ "$(defaults read com.apple.finder AppleShowAllFiles)" = "FALSE" ]
then
defaults write com.apple.finder AppleShowAllFiles TRUE
else
defaults write com.apple.finder AppleShowAllFiles FALSE
fi
killall Finder
local finderPath=`osascript -e 'tell application "Finder" to get the POSIX path of (target of front window as alias)'`
open "$finderPath"
