#!/bin/sh

for repodata in $(find /var/repo -name repodata -type d); do
    createrepo $(dirname $repodata)
done
