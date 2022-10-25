readonly SRC_FOLDER=./src
readonly NASM_PATH=./.tools/nasm-2.14/nasm.exe
readonly BOOTSTRAP_PATH=bootstrap.asm
readonly DIST_FOLDER=./dist
readonly OUTPUT_FILE=asm3d.img

if [ ! -d $DIST_FOLDER ]; then
  mkdir $DIST_FOLDER
fi

$NASM_PATH -i $SRC_FOLDER -f bin $SRC_FOLDER/$BOOTSTRAP_PATH -o $DIST_FOLDER/$OUTPUT_FILE
