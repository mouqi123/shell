#!/bin/bash
FILE=
echo "this is $0";
if [ $1 ]
then
	FILE=$1
	echo "$1"
fi
[ -n "$FILE" ] || echo "输入的参数为空"
