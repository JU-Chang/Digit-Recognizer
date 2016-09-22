#!/usr/bin/env sh
# This scripts downloads the mnist data and unzips it.

DIR="$( cd "$(dirname "$0")" ; pwd -P )"
cd $DIR

echo "Downloading..."

for fname in train test
do
    if [ ! -e $fname ]; then
        wget --no-check-certificate http://www.kaggle.com/c/digit-recognizer/download/${fname}.csv
    fi
done
