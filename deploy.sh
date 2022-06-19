#!/bin/bash -x
BRANCH=$1
DIR_SOURCE=$2
SITE=$3
RELEASE=$4
BASE_DIR="/wwwroot/sites"

#RELEASE=$(date +%Y-%m-%d-%H-%M-%S)
#NEW_RELEASE="$BASE_DIR/$SITE/$BRANCH/$RELEASE"
NEW_RELEASE="$BASE_DIR/$SITE/$BRANCH/$RELEASE"

mkdir -p $BASE_DIR/$SITE/$BRANCH/
mv $DIR_SOURCE $NEW_RELEASE

echo "rodando as paradas tudo"

echo "comandos e mais comandos"

echo "fim do deploy"
