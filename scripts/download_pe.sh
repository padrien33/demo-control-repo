#!/bin/sh

###Download PE, change version here
PE_VERSION=2017.3.1
PE_SOURCE=puppet-enterprise-${PE_VERSION}-ubuntu-16.04-amd64
###For Red Hat use the following:
#PE_SOURCE=puppet-enterprise-${PE_VERSION}-el-7-x86_64
DOWNLOAD_URL=https://s3.amazonaws.com/pe-builds/released/${PE_VERSION}/${PE_SOURCE}.tar.gz
wget --progress=bar ${DOWNLOAD_URL}
wait
tar zxf ${PE_SOURCE}.tar.gz
wait

###Setup password for the Web GUI and change the hostname to yours
cd ${PE_SOURCE}
echo '{' > pe.conf
echo '  "console_admin_password": "YOUR_PASSWORD",' >> pe.conf
echo '  "puppet_enterprise::puppet_master_host": "YOUR_HOSTNAME",' >> pe.conf
echo '}' >> pe.conf
vim pe.conf
./puppet-enterprise-installer -c pe.conf
wait
puppet agent -t

