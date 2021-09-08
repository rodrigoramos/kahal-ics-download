#!/bin/bash

if [ "$ICS_PATH" == "" ]; then
  echo ICS URL not set. Set environment variable ICS_PATH.
  exit 1
fi

ICS_TEMP_FILE=/tmp/l3-calendar.ics

echo Downloading ICS file...
wget $ICS_PATH  -O $ICS_TEMP_FILE 

echo Importing on Khal...
khal import --batch $ICS_TEMP_FILE

echo Done!

