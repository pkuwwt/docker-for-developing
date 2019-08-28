#!/bin/bash

# USAGE:
#
#  ./run.sh                    # use `src` in current dir
#  FLASK_SRC=src_dir ./run.sh  # specify src dir
#

if ! [ -z ${FLASK_SRC+x} ]; then
	VOLUME="-v `readlink -f $FLASK_SRC`:/usr/src"
elif [ -d `pwd`/src ]; then
	VOLUME="-v `pwd`/src:/usr/src"
else
	VOLUME=""
fi

docker run --name flask-develop \
	-p 5000:5000 \
	$VOLUME \
	--rm -it flask-develop

