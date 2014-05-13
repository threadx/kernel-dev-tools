#!/bin/bash
#
# Kernel development tools install for base/bare Centos 6.5
#

yum -y install git
yum -y upgrade
yum -y install wget
yum -y install jwhois
yum -y install kernel-devel
yum -y groupinstall "Development Tools"
yum -y update

#
# ZFS Libs
#

yum -y install zlib-devel
yum -y install libuuid-devel

#
# NFS
#

yum -y install nfs-utils nfs-utils-lib

#
# NGINX
#

wget http://nginx.org/packages/centos/6/noarch/RPMS/nginx-release-centos-6-0.el6.ngx.noarch.rpm
rpm -ivh nginx-release-centos-6-0.el6.ngx.noarch.rpm
yum -y install nginx
yum -y install php-fpm

chkconfig nginx on
chkconfig php-fpm on

# Because I like htop better than top...

wget http://packages.sw.be/rpmforge-release/rpmforge-release-0.5.2-2.el5.rf.x86_64.rpm
rpm -Uhv rpmforge-release*.rf.x86_64.rpm
yum -y install htop

#
# SCSI Utils
#
yum -y install lsscsi
