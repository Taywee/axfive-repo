#!/bin/sh

for spec in rpmbuild ~/rpmbuild/SPECS/*.spec; do
    spectool -g -f -C ~/rpmbuild/SOURCES "$spec"
    rpmbuild -bb "$spec"
done

