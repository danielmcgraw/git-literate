#!/usr/bin/env bash
#
# git-literate
# http://danielmcgraw.github.io/git-literate/
#
# Protect yourself from thoughtlessly pushing to remote repositories.

local randnum = `perl -e "print int rand(99999)"`
local word = `sed $number"q'd" /usr/share/dict/words`

read -p "To push to $1 type '$word': " < /dev/tty
exit `[[ "$word" == "$REPLY" ]]`