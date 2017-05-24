#!/bin/bash

a=(`ps -ef | grep "detect/start" | grep -v "grep" | awk '{print $11}'`);

x=12

if [[ "${a[@]}" =~ "${x}" ]]
then
    :
else
    echo "bs"
fi

for i in ${a[@]}
do
    echo $i
done
