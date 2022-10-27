#!/bin/sh

# TODO: Add -i switch
echo "[INF] Compiling with nasm"
echo "[INF] - nasm: $NASM_PATH"
echo "[INF] - mode: $NASM_OUT_MODE"
echo "[INF] - entry: $COMPILE_INPUT"
echo "[INF] - out: $COMPILE_OUTPUT"

$NASM_PATH -f $NASM_OUT_MODE $COMPILE_INPUT -o $COMPILE_OUTPUT
result=$?

if [ $result -ne 0 ]; then
  echo "[ERR] ❌ Compile failed"
else
  echo "[INF] ✔ Compile done"
fi
