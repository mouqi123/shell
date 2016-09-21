#!/bin/bash
xargs -a header.txt printf "-H '%s'"
ARGS=2
echo $#
if [ $# -ne $ARGS ]; then 
  echo -e "usage: $0 file1 file2"
  exit 2
fi
echo "$(cat $1)"
