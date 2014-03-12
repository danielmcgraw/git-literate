#!/bin/sh
#
# git-literate
# http://danielmcgraw.github.io/git-literate/
#
# Protect yourself from accidentally pushing to remote repositories
#
# Specific URL modification for git-literate

randnum=`perl -e "print int rand(99999)"`
word=`sed $randnum"q;d" /usr/share/dict/words`

if [[ "$2" == "git@github.com:danielmcgraw/git-literate.git" ]] 
then
  read -p "To push to $1 type '$word': " < /dev/tty
  exit `[[ "$word" == "$REPLY" ]]`
fi