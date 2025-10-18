#!/bin/bash

TEMPLATE_FILE="./gs/gs.ini.template"
OUTPUT_FILE="./gs/gs.ini"
TMP_FILE=$(mktemp)

sed \
  -e "s/{DIST}/${DIST}/g" \
  -e "s/{PUBLIC_IP}/${PUBLIC_IP}/g" \
  "$TEMPLATE_FILE" > "$TMP_FILE"

iconv -f utf-8 -t gbk "$TMP_FILE" -o "$OUTPUT_FILE"

rm -f "$TMP_FILE"