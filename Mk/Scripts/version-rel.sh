#!/bin/sh -e
# $FreeBSD$
#
# MAINTAINER: portmgr@freebsd.org

usage() {
    cat >&2 <<EOF
${0##*/}: usage

    ${0##*/} version [ofields] [owidth]

    Output a version string converted to an integer value that will
    sort munerically into the correct version order.

    version: version string consisting of numeric fields separated by
             '.' characters.  Non-numeric version fields (1.0a1) are
	     treated as zero.

    ofields: number of output fields (default: 3) Fields missing from
             the input will be set to 0.  Excess fields in the input
             will be ignored.

    owidth: width output fields will be zero padded to (default: 2)

EOF
    exit 1
}

version=${1:?$(usage)}
ofields=${2:-3}
owidth=${3:-2}

fwidth=1
count=0
IFS=.
for f in $version ; do
    count=$(( count + 1 ))

    case $f in
	*[^0-9.]*)
	    f=0
	    ;;
	*)
	    ;;
    esac

    printf "%0*d" $fwidth $f
    fwidth=${owidth}
    if [ $count -ge $ofields ]; then
	break
    fi
done

while [ $count -lt $ofields ]; do
    count=$(( count + 1 ))
    printf "%0*d" $fwidth 0
done

echo

