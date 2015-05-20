#!/bin/bash

sudo find -L {/home/local,/home/www,/home/faron} -type d -name '*.git' -exec basename {} \;
git status
git add --all
git commit -m "auto-committing via script"
#git push -u "$( basename ../).git" master
git push

exit 0
