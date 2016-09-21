#!/bin/bash
CUR_DIR=`pwd`
cd /usr/local/
pwd
cd ..
pwd
cd $CUR_DIR
pwd

echo ${CUR_DIR}"/aaaaaaa/"${1}

name=`date +%Y-%m-%dT%H-%M-%S`
name=$name".tar.gz"
echo $name
tar zcf $name $1
