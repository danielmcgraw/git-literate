#!/bin/sh
#
# git-literate
# http://danielmcgraw.github.io/git-literate/
#
# Protect yourself from accidentally pushing to remote repositories.

randnum=`perl -e "print int rand(99999)"`
word=`sed $randnum"q;d" /usr/share/dict/words`

read -p "To push to $1 type '$word': " < /dev/tty
exit `[[ "$word" == "$REPLY" ]]`