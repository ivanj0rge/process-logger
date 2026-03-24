#!/bin/bash

start="Starting logger..."
refresh=3
message="Logging timestamps every $refresh seconds!"
log_file="log.txt"

echo $start
echo $message

while true
do
	date >> $log_file
	sleep $refresh
done

