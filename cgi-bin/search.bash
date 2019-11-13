#!/bin/bash
echo "Content-type: text/html"
echo ''
#echo 'PARAMS' $*
#echo 'REQUEST' $REQUEST_URI
read POST
#echo 'POST ' $POST

echo "<html><body><h2>DITL security</h2>"
LAST=$(echo $POST | cut -d= -f3 | while read; do echo -e ${REPLY//%/\\x}; done)
# See https://stackoverflow.com/questions/6250698/how-to-decode-url-encoded-string-in-shell for the last bit!
# Removes URL encoding
echo "Welcome Mr $LAST"
echo "</body></html>"
