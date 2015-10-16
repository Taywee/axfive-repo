#!/bin/sh

scp -r centos6:~/rpmbuild/RPMS centos7:~/rpmbuild/RPMS .
rpm --addsign RPMS/*/*.rpm
scp -r RPMS tcr@www.axfive.net:~
