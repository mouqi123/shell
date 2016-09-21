#!/bin/bash

ERR_PARA=10  #参数错误
ERR_DIR=20   #目录不存在
CUR_DIR=`pwd` #当前目录

[ $# -eq 2 ] || {
	echo -e "参数错误，正确的用法为: $0   [source dir]   [dest dir]"
	exit $ERR_PARA
}

[ -d $1 ] || {
	echo -e "待部署的源目录 $1 不存在, 请输入正确的目录名"
	exit $ERR_DIR
}

[ $1 != ${1#/} ] && SOUR_ABS=$1 || SOUR_ABS=${CUR_DIR}"/"${1}

[ -d $2 ] || {
	echo -e "目的目录 $2 不存在, 请输入正确的目录名"
	exit $ERR_DIR
}

[ $2 != ${2#/} ] && DEST_ABS=$2 || DEST_ABS=${CUR_DIR}"/"${2}

DEST_DIR=`dirname $DEST_ABS`
DEST_DIR_BASE=`basename $DEST_ABS`

cd $DEST_DIR

NOW=`date +%Y-%m-%dT%H-%M-%S`
BAK_FILE=$NOW".tar.gz"

tar zcf $BAK_FILE $DEST_DIR_BASE

BAK_DIR="/home/work"

[ -d $BAK_DIR ] || {
	echo "$BAK_DIR 目录不存在，正在创建..."
	sudo mkdir $BAK_DIR
}

sudo mv $BAK_FILE $BAK_DIR

cd ../bin
echo -e "Please wait a minutes, the server is starting now ......"
( . shutdown.sh )

sleep 3

cd -

rm -rf $DEST_DIR_BASE

mv $SOUR_ABS .

cd -

( . ../bin/startup.sh )

cd $CUR_DIR
