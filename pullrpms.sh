#!/bin/sh
# This is for the central signing host, to pull RPMS and sign them, and then
# push them to the repo server

scp -r centos6:~/rpmbuild/RPMS centos7:~/rpmbuild/RPMS .
rpm --addsign RPMS/*/*.rpm
scp -r RPMS tcr@www.axfive.net:~
