#!/bin/bash
#
# Kernel development tools install for Ubuntu 14
#

#
# Update to latest patches
#
sudo apt-get update
sudo apt-get upgrade

#
#
sudo apt-get install -y linux-headers-$(uname -r) build-essential

#
# NFS
#

sudo apt-get install -y nfs-kernel-server
sudo apt-get install -y nfs-common

#
# Ohter missing utilities
#

sudo apt-get install -y git
sudo apt-get install -y unzip
sudo apt-get install -y nginx
sudo apt-get install -y php5-fpm
sudo apt-get install -y htop
sudo apt-get install -y pandoc
sudo apt-get install -y make
sudo apt-get install -y g++
sudo apt-get install -y libzip-dev
sudo apt-get install -y libcurl4-openssl-dev
sudo apt-get install -y libxml2-dev
sudo apt-get install -y xutils-dev
sudo apt-get install -y libtool
sudo apt-get install -y automake

#
# Install vim to replate vi
#

sudo apt-get install -y vim

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

