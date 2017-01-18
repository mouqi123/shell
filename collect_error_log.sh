#!/bin/bash

CUR_DIR=`pwd`
FILE_NAME="error_logs.txt"
TODAY=`date +%Y-%m-%d`
OUTPUT_FILE="${CUR_DIR}/${FILE_NAME}"

TARGET_FILE_PREFIX="/data/logs/rrx-debt/rrx-debt.error.log-"

TARGET_FILE_PATH=${TARGET_FILE_PREFIX}${TODAY}


echo -e "##################start collecting error logs  ############################\n\n" 
echo -e "##################start collecting error logs  ############################\n\n" > $OUTPUT_FILE

echo -e "==================100.109.91.53 ERROR LOG BEGIN================================\n\n" >> $OUTPUT_FILE
echo -e "==================100.109.91.53 ERROR LOG BEGIN================================\n\n" >> $OUTPUT_FILE
ssh -i /root/readonly.key readonly@100.109.91.53 cat $TARGET_FILE_PATH >> $OUTPUT_FILE
echo -e "==================100.109.91.53 ERROR LOG END  ================================\n\n" >> $OUTPUT_FILE
echo -e "==================100.109.91.53 ERROR LOG END	================================\n\n" >> $OUTPUT_FILE
echo -e "end collecting 100.109.91.53\n"

echo -e "==================100.109.91.54 ERROR LOG BEGIN================================\n\n" >> $OUTPUT_FILE
echo -e "==================100.109.91.54 ERROR LOG BEGIN================================\n\n" >> $OUTPUT_FILE
ssh -i /root/readonly.key readonly@100.109.91.54 cat $TARGET_FILE_PATH >> $OUTPUT_FILE
echo -e "==================100.109.91.54 ERROR LOG END  ================================\n\n" >> $OUTPUT_FILE
echo -e "==================100.109.91.54 ERROR LOG END	================================\n\n" >> $OUTPUT_FILE
echo -e "end collecting 100.109.91.54\n"

echo -e "==================100.109.91.55 ERROR LOG BEGIN================================\n\n" >> $OUTPUT_FILE
echo -e "==================100.109.91.55 ERROR LOG BEGIN================================\n\n" >> $OUTPUT_FILE
ssh -i /root/readonly.key readonly@100.109.91.55 cat $TARGET_FILE_PATH >> $OUTPUT_FILE
echo -e "==================100.109.91.55 ERROR LOG END  ================================\n\n" >> $OUTPUT_FILE
echo -e "==================100.109.91.55 ERROR LOG END	================================\n\n" >> $OUTPUT_FILE
echo -e "end collecting 100.109.91.55\n"

echo -e "==================100.105.80.5 ERROR LOG BEGIN================================\n\n" >> $OUTPUT_FILE
echo -e "==================100.105.80.5 ERROR LOG BEGIN================================\n\n" >> $OUTPUT_FILE
ssh -i /root/readonly.key readonly@100.105.80.5 cat $TARGET_FILE_PATH >> $OUTPUT_FILE
echo -e "==================100.105.80.5 ERROR LOG END  ================================\n\n" >> $OUTPUT_FILE
echo -e "==================100.105.80.5 ERROR LOG END	================================\n\n" >> $OUTPUT_FILE
echo -e "end collecting 100.105.80.5\n"

echo -e "==================100.105.80.6 ERROR LOG BEGIN================================\n\n" >> $OUTPUT_FILE
echo -e "==================100.105.80.6 ERROR LOG BEGIN================================\n\n" >> $OUTPUT_FILE
ssh -i /root/readonly.key readonly@100.105.80.6 cat $TARGET_FILE_PATH >> $OUTPUT_FILE
echo -e "==================100.105.80.6 ERROR LOG END  ================================\n\n" >> $OUTPUT_FILE
echo -e "==================100.105.80.6 ERROR LOG END	================================\n\n" >> $OUTPUT_FILE
echo -e "end collecting 100.105.80.6\n"

echo -e "==================100.105.80.7 ERROR LOG BEGIN================================\n\n" >> $OUTPUT_FILE
echo -e "==================100.105.80.7 ERROR LOG BEGIN================================\n\n" >> $OUTPUT_FILE
ssh -i /root/readonly.key readonly@100.105.80.7 cat $TARGET_FILE_PATH >> $OUTPUT_FILE
echo -e "==================100.105.80.7 ERROR LOG END  ================================\n\n" >> $OUTPUT_FILE
echo -e "==================100.105.80.7 ERROR LOG END	================================\n\n" >> $OUTPUT_FILE
echo -e "end collecting 100.105.80.7\n"

echo -e "==================100.105.80.8 ERROR LOG BEGIN================================\n\n" >> $OUTPUT_FILE
echo -e "==================100.105.80.8 ERROR LOG BEGIN================================\n\n" >> $OUTPUT_FILE
ssh -i /root/readonly.key readonly@100.105.80.8 cat $TARGET_FILE_PATH >> $OUTPUT_FILE
echo -e "==================100.105.80.8 ERROR LOG END  ================================\n\n" >> $OUTPUT_FILE
echo -e "==================100.105.80.8 ERROR LOG END	================================\n\n" >> $OUTPUT_FILE
echo -e "end collecting 100.105.80.8\n"

echo -e "==================100.105.80.9 ERROR LOG BEGIN================================\n\n" >> $OUTPUT_FILE
echo -e "==================100.105.80.9 ERROR LOG BEGIN================================\n\n" >> $OUTPUT_FILE
ssh -i /root/readonly.key readonly@100.105.80.9 cat $TARGET_FILE_PATH >> $OUTPUT_FILE
echo -e "==================100.105.80.9 ERROR LOG END  ================================\n\n" >> $OUTPUT_FILE
echo -e "==================100.105.80.9 ERROR LOG END	================================\n\n" >> $OUTPUT_FILE
echo -e "end collecting 100.105.80.9\n"
