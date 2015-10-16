#!/bin/sh
# This is for the repo server, to push the files into their spots and update
# the repo data

for version in 6 7; do
    mv -v RPMS/x86_64/*.el$version.*.rpm /var/repo/centos/$version/x86_64/ 
done

for repodata in $(find /var/repo -name repodata -type d); do
    createrepo $(dirname $repodata)
done
