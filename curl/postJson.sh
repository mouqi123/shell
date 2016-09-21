#!/bin/bash
#ARGS=2
#E_ARGS=100    #参数数目错误
#if [ $# -ne 2 ]; then
#  echo -e "参数错误，请重试。\n Usage: $0 [head_file_name] [body_file]"
#  exit $E_ARGS
#fi
#URL=$1
#headers=`xargs -a header.txt -d '\n' printf "-H '%s' "`
#echo $headers
#echo "curl $headers -X POST -d @body.json $URL -v"

#echo $(cat header.txt)
#curl $(cat header.txt) -X POST -d @body.json $URL -v
while true
do
	curl -H "Content-Type: application/json" -H "Accept: application/json" -X POST -d @$1 -v $2
	sleep 2
done
echo -e "\n"
