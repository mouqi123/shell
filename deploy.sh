#!/bin/bash

ERR_PARA=10  #参数错误
ERR_DIR=20   #目录不存在
CUR_DIR=`pwd` #当前目录

[ $# -eq 2 ] || {
	echo -e "参数错误，正确的用法为: $0   [source dir]   [dest dir]"
	exit $ERR_PARA
}

[ ! -d $1 ] || {
	echo -e "待部署的源目录 $1 不存在, 请输入正确的目录名"
	exit $ERR_DIR
}

SOUR_ABS=${CUR_DIR}"/"${1}

[ ! -d $2 ] || {
	echo -e "待部署的源目录 $2 不存在, 请输入正确的目录名"
	exit $ERR_DIR
}

DEST_DIR=`dirname $2`
DEST_DIR_BASE=`basename $2`

cd $DEST_DIR

NOW=`date +%Y-%m-%dT%H:%M:%S`


