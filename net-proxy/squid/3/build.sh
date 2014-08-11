#!/bin/bash

apt-get -qy --force-yes install squid3 || exit $?

sed -i "s/^#acl localnet/acl localnet/" /etc/squid3/squid.conf
sed -i "s/^#http_access allow localnet/http_access allow localnet/" /etc/squid3/squid.conf

