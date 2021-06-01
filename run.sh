#!/bin/sh
mkdir -p /podget/logs
while true
do
  runuser -l abc -c "/usr/bin/podget" | tee -a /podget/logs/podget.log
  sleep $Refresh
done
