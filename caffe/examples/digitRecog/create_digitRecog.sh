#!/usr/bin/env sh
# This script converts the digitRecog data into lmdb/leveldb format,
# depending on the value assigned to $BACKEND.

EXAMPLE=examples/digitRecog
DATA=data/digitRecog
BUILD=build/examples/digitRecog

BACKEND="lmdb"

echo "Creating ${BACKEND}..."

rm -rf $EXAMPLE/digitRecog_train_${BACKEND}
rm -rf $EXAMPLE/digitRecog_test_${BACKEND}
rm -rf $EXAMPLE/digitRecog_val_${BACKEND}

$BUILD/convert_digitRecog_train_lmdb.bin $DATA/train.csv \
$EXAMPLE/digitRecog_train_${BACKEND} --backend=${BACKEND}

$BUILD/convert_digitRecog_train_lmdb.bin $DATA/val.csv \
$EXAMPLE/digitRecog_val_${BACKEND} --backend=${BACKEND}

$BUILD/convert_digitRecog_lmdb.bin $DATA/test.csv \
$EXAMPLE/digitRecog_test_${BACKEND} --backend=${BACKEND}

echo "Done."
