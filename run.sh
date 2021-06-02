#!/bin/sh
mkdir -p /podget/logs
usermod -u $PUID abc
groupmod -g $PGID abc
while true
do
  runuser -l abc -c "/usr/bin/podget" | tee -a /podget/logs/podget-$(date +'%m/%d/%Y').log
  echo waiting $Refresh | tee -a /podget/logs/podget-$(date +'%m/%d/%Y').log
  sleep $Refresh
done
