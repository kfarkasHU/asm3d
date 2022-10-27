#!/bin/sh

echo "[INF] Linking with GoLink"
echo "[INF] - golink: $GOLINK_PATH"
echo "[INF] - type: $GOLINK_TYPE"
echo "[INF] - entry: $GOLINK_ENTRY"
echo "[INF] - externals: $GOLINK_EXTERNALS"
echo "[INF] - input: $LINK_INPUT"

# TODO: Supress the message here
# TODO: Modify type to be a windows app
$GOLINK_PATH $GOLINK_TYPE -entry $GOLINK_ENTRY $GOLINK_EXTERNALS $LINK_INPUT -fo $LINK_OUTPUT
result=$?

if [ $result -ne 0 ]; then
  echo "[ERR] ❌ Link failed"
else
  echo "[INF] ✔ Link done"
fi
