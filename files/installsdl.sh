#!/bin/bash

#enable wheezy package sources
echo "deb http://legacy.raspbian.org/raspbian wheezy main
" > /etc/apt/sources.list.d/wheezy.list

#set stable as default package source (currently buster)
echo "APT::Default-release \"buster\";
" > /etc/apt/apt.conf.d/10defaultRelease

#set the priority for libsdl from wheezy higher then the buster package
echo "Package: libsdl1.2debian
Pin: release n=buster
Pin-Priority: -10
Package: libsdl1.2debian
Pin: release n=wheezy
Pin-Priority: 900
" > /etc/apt/preferences.d/libsdl

#install
apt-get update
apt-get -y --allow-downgrades install libsdl1.2debian/wheezy
