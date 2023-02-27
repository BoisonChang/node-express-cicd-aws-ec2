#!/bin/bash
#Stopping existing node servers
#Find the process IDs of the node servers to be stopped
pids=$(ps -ef | grep "node server.js" | grep -v grep | awk '{print $2}')
#Loop through the process IDs and kill them one by one
for pid in $pids
do
  kill $pid
  #Check if the kill command was successful
  if [ $? -eq 0 ]; then
    echo "Successfully stopped node server with PID $pid"
  else
    echo "Failed to stop node server with PID $pid"
    #Exit the script with an error code
    exit 1
  fi
done