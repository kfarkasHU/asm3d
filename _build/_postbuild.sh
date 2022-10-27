#!/bin/sh

for DIST_FOLDER in ${DIST_TEMP_FOLDERS[@]}; do
	if [ -d $DIST_FOLDER ]; then
		echo -n "[INF] Removing $DIST_FOLDER and its content... "
		rm -r -f $DIST_FOLDER
		echo "Done"
	fi
done
