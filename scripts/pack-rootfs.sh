#!/bin/sh

if [ ! -d "$1" ]; then
  echo "Input directory bot found $1.\n"
  exit 1
fi
if [ -z "$2" ]; then
  echo "Please specify output filename.\n"
  exit 1
fi

MYDIR=`dirname $0`
ROOT=`pwd`
IMG=$2
SRCDIR=$1

. $MYDIR/ls-functions.sh

package_rootfs $SRCDIR $IMG
