#!/bin/bash

if [ ! -d deb_package/usr/share/bsnes ]; then
	wget "https://api.cirrus-ci.com/v1/artifact/task/5499714854453248/bsnes-nightly.zip" -O bsnes.zip
	unzip bsnes.zip
    unzip bsnes-nightly.zip
    rm -rf bsnes-nightly.zip
    mkdir -p deb_package/usr/share
	mv bsnes-nightly deb_package/usr/share/bsnes
fi

dpkg-deb -b deb_package .