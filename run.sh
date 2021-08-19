#!/bin/sh
usermod -u $PUID abc
groupmod -g $PGID abc
chown abc:abc -R /Podget

runuser -l abc -c "/usr/bin/podget -d /Podget/config/"
