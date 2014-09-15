#!/bin/bash

if ! type squid3 &>/dev/null ; then
	apt-get -qy --force-yes install squid3

	sed -i "s/^#acl localnet/acl localnet/" /etc/squid3/squid.conf
	sed -i "s/^#http_access allow localnet/http_access allow localnet/" /etc/squid3/squid.conf
fi

true

