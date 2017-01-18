#!/bin/bash

XIAOYUE="100.109.89"
YIZHUANG="100.105.85"

[ $1 ] || {
	echo "请输入要查询找的内容"
	echo "用法: $0 word1 word2 -param1 -param2"
	exit -1;
}

cmd="grep $1 /data/logs/innerapi/innerapi.log"

[ $2 ] && cmd=$cmd" | grep $2"
[ $3 ] && cmd=$cmd" $3"
[ $4 ] && cmd=$cmd" $4"

echo "查询命令为:"$cmd

for (( i=250; i<=252; i++))
do
	echo "=================$YIZHUANG.$i start>>>>>>>>>>>>>>>>>>>>>"
	ssh -i /root/readonly.key readonly@$YIZHUANG'.'$i "$cmd"
	echo "=================$YIZHUANG.$i end>>>>>>>>>>>>>>>>>>>>>"
done

for (( i=25; i<=27; i++))
do
	echo "=================$XIAOYUE.$i start>>>>>>>>>>>>>>>>>>>>>"
	ssh -i /root/readonly.key readonly@$XIAOYUE'.'$i "$cmd"
	echo "=================$XIAOYUE.$i end>>>>>>>>>>>>>>>>>>>>>"
done

