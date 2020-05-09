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


#
# usage:
#    debug foo
#    > foo = "1"
#
function debug() { echo "$1 = \"$(eval echo \$$1)\"" >&2; }
