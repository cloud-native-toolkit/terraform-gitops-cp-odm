#!/usr/bin/env bash

#SCRIPT_DIR=$(cd $(dirname "$0"); pwd -P)
#MODULE_DIR=$(cd "${SCRIPT_DIR}/.."; pwd -P)

CHART_DIR="$1"
DEST_DIR="$2"

## Add logic here to put the yaml resource content in DEST_DIR
cp -R "${CHART_DIR}/cp4ba-odm"/* "${DEST_DIR}/cp4ba-odm/"
cp -R "${CHART_DIR}/db-secret"/* "${DEST_DIR}/db-secret"
echo "**** Copied ${CHART_DIR} to   ${DEST_DIR}  ****"

find "${DEST_DIR}" -name "*"
