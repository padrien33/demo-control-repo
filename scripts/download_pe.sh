#!/bin/sh
PE_VERSION=2017.3.0
PE_SOURCE=puppet-enterprise-${PE_VERSION}-el-7-x86_64
DOWNLOAD_URL=https://s3.amazonaws.com/pe-builds/released/${PE_VERSION}/${PE_SOURCE}.tar.gz
wget --progress=bar ${DOWNLOAD_URL}
wait
tar zxf ${PE_SOURCE}.tar.gz
