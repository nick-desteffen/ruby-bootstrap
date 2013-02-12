#!/usr/bin/env bash
apt-get -y update
apt-get -y -m install build-essential zlib1g-dev libssl-dev libreadline-gplv2-dev libyaml-dev libxslt1-dev libxml2-dev libcurl4-openssl-dev libffi-dev libgdbm-dev libncurses5-dev
cd /tmp
wget http://ftp.ruby-lang.org/pub/ruby/1.9/ruby-1.9.3-p385.tar.gz
tar xzvf ruby-1.9.3-p385.tar.gz
cd ruby-1.9.3-p385/
./configure --prefix=/usr/local
make
make install
gem update --system
gem install bundler
ruby -v
