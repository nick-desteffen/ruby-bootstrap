#!/usr/bin/env bash
apt-get -y update
apt-get -y -m install build-essential zlib1g-dev libssl-dev libreadline-gplv2-dev libyaml-dev libxslt-dev libxml2-dev
apt-get -y -m install build-essential zlib1g-dev libssl-dev libreadline-gplv2-dev libyaml libyaml-dev libxslt-dev libxml2-dev
# libffi46-devel gdbm-devel
cd /tmp
wget http://ftp.ruby-lang.org/pub/ruby/1.9/ruby-1.9.3-p194.tar.gz
tar xzvf ruby-1.9.3-p194.tar.gz
cd ruby-1.9.3-p194/
./configure --prefix=/usr/local
make
make install
