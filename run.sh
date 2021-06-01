#!/bin/sh
while true
do
  runuser -l abc -c "/usr/bin/podget"
  sleep $Refresh
done
