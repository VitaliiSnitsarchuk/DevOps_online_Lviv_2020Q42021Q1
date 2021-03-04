#!/bin/bash
data=$1
backup=$2
script=$0
curdir=$(dirname $0)
list="$curdir/list.txt"


if [ ! -d $1 -a $2 ];
	then
	echo "Folders DATA & Backup is not exist"
#	exit $?
fi


log="$curdir/log.log"
time='date +"%x_%X"'

for file in $data/*
do

filename=$(basename $file)
backupname="$backup/$filename"

if [ ! -f $backupname ];
    then
		echo "file was found & copied to" $backupname
		$time >> $log
 		echo "$filename copyed to Backup" >> $log
fi
done

if [ ! -f $list ];
	then
		touch $list
fi


for file in $(cat $list)
do

listname=$(basename $file)
dataname="$data/$listname"

if [ ! -f $dataname ];
	then
		echo "file has been removed,deleted or renamed from" $dataname
		$time >> $log
		echo "file not found in DATA" >> $log
fi
done

ls=$(ls $data/* > $list)
cp=$(cp $data/* $backup/)

echo "All files saved !"





