readonly NASM_PATH=./.tools/nasm-2.14/nasm.exe
readonly BOOTSTRAP_PATH=./src/bootstrap.asm
readonly DIST_FOLDER=./dist
readonly OUTPUT_FILE=asm3d.img

if [ ! -d $DIST_FOLDER ]; then
  mkdir $DIST_FOLDER
fi

$NASM_PATH -f bin $BOOTSTRAP_PATH -o $DIST_FOLDER/$OUTPUT_FILE
