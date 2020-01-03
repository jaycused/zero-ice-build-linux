#!/bin/sh
mkdir /build && cd /build
cd /build
echo "Getting ${SOURCE_FILE_URL}"
wget ${SOURCE_FILE_URL}
FILE_NAME=$(find . -type f -name *.tar.gz)
echo "Extracting ${FILE_NAME}"
tar -xf ${FILE_NAME}
DIR="${FILE_NAME%.tar.gz}"
cd ${DIR}
echo "Building dist for ${DIR}"
python3 setup.py sdist bdist_wheel
echo "Uploading to ${REPO_URL}"
python3 -m twine upload --non-interactive  --username ${REPO_USERNAME} --password ${REPO_PASSWORD} --repository-url ${REPO_URL} dist/*
