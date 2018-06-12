#!/bin/sh

set -e

export LC_ALL=C

export PATH=/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin:/usr/local/sbin:/opt/bin

if_not_exist() {
	! command -v "$1" >/dev/null 2>&1
}

if_not_exist apt-get || {
	export DEBIAN_FRONTEND=noninteractive
	export APT_LISTCHANGES_FRONTED=none
	export APT_LISTBUGS_FRONTEND=none
	apt-get --quiet=2 --option 'Acquire::Languages=none' update
	apt-get --quiet=2 --assume-yes install apt-transport-https
	f=$(mktemp)
	sed -e "s|http://deb.debian.org/debian|${APT_DEBIAN_URI}|" -e "s|http://security.debian.org/debian-security|${APT_DEBIAN_SECURITY_URI}|" /etc/apt/sources.list > $f
	cp $f /etc/apt/sources.list
	chmod 644 /etc/apt/sources.list
	rm -f $f
	apt-get --quiet=2 --option 'Acquire::Languages=none' update
	apt-get --quiet=2 --assume-yes upgrade
	exit
}
