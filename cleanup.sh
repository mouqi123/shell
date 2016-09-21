#!/bin/bash
FILE=$1
ROOT_UID=0  	#root用户才能操作
LINES=50		#默认保存文件的行数
E_NOTROOT=87	#非root用户运行时的错误码
E_EMPTYARG=90  	#传入的参数为空
E_NOTEXIST=100 	#文件不存在

if [ "$UID" -ne "$ROOT_UID" ]; then
  echo "must be root to run this script"
  exit $E_NOTROOT
fi

if [ -n "$2" ]; then
  lines=$2
else
  lines=$LINES
fi

[ -n "$FILE" ] || {
  echo "usage: $0 filename retain_lines"
  exit $E_EMPTYARG
}

[ -e $FILE ] || {
  echo "file $FILE doesn't exists"
  exit $E_NOTEXIST
}

tail -n $lines $FILE > temp
mv temp $FILE

exit 0
