#!/bin/bash -x
BRANCH=$1
DIR_SOURCE=$2
SITE=$3
RELEASE=$4
RETENTION=$5
BASE_DIR="/wwwroot/sites"
BASE_DELETE="$BASE_DIR/$SITE/$BRANCH/releases/"

for i in $(ls $BASE_DELETE | sort -n |  awk '$1 < ($RELEASE - $RETENTION) {print ;}'); do
  echo "Removendo $i"
  rm -Rf $BASE_DELETE$i
done
