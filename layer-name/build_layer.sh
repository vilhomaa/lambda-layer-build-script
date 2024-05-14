#!/bin/bash
export PKG_DIR="python"
rm -rf ${PKG_DIR} && mkdir -p ${PKG_DIR}
docker run --rm -v $(pwd):/foo -w /foo lambci/lambda:build-python3.8 \
echo "building layer from file:" $(pwd) "/requirements.txt"
pip3 install -r requirements.txt --no-deps -t ${PKG_DIR}
