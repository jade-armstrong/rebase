#!/bin/sh

#This is a simple bash script to update your main branch and rebase.
#This is useful to prevent you from rebasing to an outdated main.

BRANCH=$(git symbolic-ref --short HEAD)
git checkout main
git pull
git checkout $BRANCH
git rebase --interactive --gpg-sign=example@email.com main
#Replace the email address with your main github email
