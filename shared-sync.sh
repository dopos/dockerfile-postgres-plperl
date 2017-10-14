#!/usr/bin/env bash
set -e

SRC=${SRC:-/opt/shared}
DEST=${DEST:-/usr/share/postgresql}

if [ -e $SRC/* ] ; then
  echo "Sync $SRC.."
  cp -rf $SRC/* $DEST
fi
