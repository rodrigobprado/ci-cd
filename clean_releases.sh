#!/bin/bash -x
BRANCH=$1
DIR_SOURCE=$2
SITE=$3
RELEASE=$4
RETENTION=$5
BASE_DIR="/wwwroot/sites"
BASE_DELETE="$BASE_DIR/$SITE/$BRANCH/releases/"

echo "parte por parte"

echo " $BASE_DELETE"
echo "comando do ls"
echo " $(ls $BASE_DELETE )"

echo "o release tem $RELEASE"
echo "a retenção tem $RETENTION"
echo "a saida do filtrado do ls fica => $(ls $BASE_DELETE | sort -n |  awk '$1 < ($RELEASE - $RETENTION) {print ;}')"
echo " "
echo "o for ficara assim => for i in $(ls $BASE_DELETE | sort -n |  awk '$1 < ($RELEASE - $RETENTION) {print ;}'); do "

for i in $(ls $BASE_DELETE | sort -n |  awk '$1 < ($RELEASE - $RETENTION) {print ;}'); do
  echo "Removendo $i"
  rm -Rf $BASE_DELETE$i
done
