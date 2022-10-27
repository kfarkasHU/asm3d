#!/bin/sh

for DIST_FOLDER in ${DIST_FOLDERS[@]}; do
	if [ ! -d $DIST_FOLDER ]; then
		echo -n "[INF] $DIST_FOLDER not exists. Creating... "
		mkdir $DIST_FOLDER
		echo "Done"
	fi
done
