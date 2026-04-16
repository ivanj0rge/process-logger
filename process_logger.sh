#!/bin/bash

start="Starting logger..."
refresh=3
message="Logging timestamps every $refresh seconds!"
log_file="log.txt"

echo $start
echo $message

for i in {1...9}
do
	date >> $log_file
	sleep $refresh
done

echo "Finished logging"

