#!/bin/bash
export WRKDIR=$(pwd)
export LYR_PDS_DIR="layer-name"

#Init Packages Directory
mkdir -p packages/

# Building lambda layer
cd ${WRKDIR}/${LYR_PDS_DIR}/
${WRKDIR}/${LYR_PDS_DIR}/build_layer.sh
zip -r ${WRKDIR}/packages/layer-name.zip .
rm -rf ${WRKDIR}/${LYR_PDS_DIR}/python/
