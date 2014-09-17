#!/bin/bash
#
# Kernel development tools install for base/bare Centos 6.5
#

#
# ZeroMQ
#

wget http://download.zeromq.org/zeromq-4.0.4.tar.gz
gunzip zeromq-4.0.4.tar.gz
tar xvvf zeromq-4.0.4.tar
cd zeromq-4.0.4
./configure
make
sudo make install
sudo ldconfig
cd ..

git clone git://github.com/zeromq/czmq.git
cd czmq
sh autogen.sh
./configure
make all
sudo make install
sudo ldconfig
cd src
./czmq_selftest
cd ../..

