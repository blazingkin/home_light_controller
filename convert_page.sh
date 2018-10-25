#!/bin/bash

cat arduino_page.html | sed 's/"/\\"/g' > arduino_page.tmp
cat <(echo "\"") arduino_page.tmp <(echo "\"") > arduino_page.converted
rm arduino_page.tmp || true
