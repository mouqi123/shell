#!/bin/bash

for (( i=1; i<4; i++ ))
do
	echo "11.12.12."$i
done

cmd="原字符串"
[ $1 ] && {
  cmd=$cmd"$1"
  echo $cmd
}
