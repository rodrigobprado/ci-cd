#!/bin/bash -x
BRANCH=$1
DIR_SOURCE=$2
SITE=$3
RELEASE=$4
BASE_DIR="/wwwroot/sites"

NEW_RELEASE="$BASE_DIR/$SITE/$BRANCH/releases/$RELEASE"

mkdir -p $BASE_DIR/$SITE/$BRANCH/releases
mv $DIR_SOURCE $NEW_RELEASE

echo "rodando as paradas tudo"

echo "comandos e mais comandos"

echo "fim do deploy"
