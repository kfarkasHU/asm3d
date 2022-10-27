#!/bin/sh

# General
readonly FILENAME=asm3d

readonly NASM_PATH=.tools/nasm-2.14/nasm.exe
readonly NASM_OUT_MODE=win32

readonly GOLINK_PATH=.tools/GoLink/GoLink.exe
readonly GOLINK_TYPE=-console
readonly GOLINK_ENTRY=_main
readonly GOLINK_EXTERNALS='kernel32.dll user32.dll'

# Dist folders
readonly DIST=dist
readonly DIST_LINK='dist_link'
readonly DIST_COMPILE='dist_compile'

# Dist files
readonly DISTFILE=$FILENAME.exe
readonly DISTFILE_LINK=$FILENAME.exe
readonly DISTFILE_COMPILE=$FILENAME.obj

# Source
readonly SOURCE_FOLDER=src
readonly SOURCE_ENTRY=bootstrap.asm

# Shared
readonly COMPILE_INPUT=$SOURCE_FOLDER\\$SOURCE_ENTRY
readonly COMPILE_OUTPUT=$DIST_COMPILE\\$DISTFILE_COMPILE

readonly LINK_INPUT=$COMPILE_OUTPUT
readonly LINK_OUTPUT=$DIST_LINK\\$DISTFILE_LINK

readonly BUILD_INPUT=$LINK_OUTPUT
readonly BUILD_OUTPUT=$DIST/$DISTFILE

readonly DIST_TEMP_FOLDERS=($DIST_LINK $DIST_COMPILE)
readonly DIST_FOLDERS=($DIST ${DIST_TEMP_FOLDERS[*]})
