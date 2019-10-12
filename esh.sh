#!/bin/bash
# esh is a utility library for Effective SHell script.
#

#
# usage:
#   filename="hogehoge.txt"
#   [ -f $filename ] || abort "no such file, $filename"
#
function abort {
   echo "$@" 1>&2
   exit 1
}

#
#
# usage:
#   [ -f $filename ] && error "$filename exist already!!!"
#
function error {
   echo "$@" 1>&2
}

function githubclone {
    USER=AtsushiSakai
    echo "githubclone"
    curl -s "https://api.github.com/users/$USER/repos?per_page=100"| grep html | grep /$USER/ | awk '{print $2}'
}
