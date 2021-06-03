#!/bin/sh
mkdir -p /Podget/logs
usermod -u $PUID abc
groupmod -g $PGID abc
chown abc /Podget/logs
while true
do
  runuser -l abc -c "/usr/bin/podget" | tee -a /Podget/logs/podget-$(date +'%m/%d/%Y').log
  echo waiting $Refresh | tee -a /Podget/logs/podget-$(date +'%m/%d/%Y').log
  sleep $Refresh
done
