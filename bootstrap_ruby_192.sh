#!/usr/bin/env bash
apt-get -y update
apt-get -y install build-essential zlib1g-dev libssl-dev libreadline-gplv2-dev libyaml-dev libxslt-dev libxml2-dev
cd /tmp
wget http://ftp.ruby-lang.org/pub/ruby/1.9/ruby-1.9.2-p320.tar.gz
tar xzvf ruby-1.9.2-p320.tar.gz
cd ruby-1.9.2-p320/
./configure --prefix=/usr/local
make
make install