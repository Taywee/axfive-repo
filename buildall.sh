#!/bin/sh

for repo in ~/repos/*; do
    pushd "$repo"
    git pull
    echo cp "$repo"/pkg/rpm/*.spec ~/rpmbuild/SPECS/
    cp "$repo"/pkg/rpm/*.spec ~/rpmbuild/SPECS/
    popd
done

for spec in rpmbuild ~/rpmbuild/SPECS/*.spec; do
    spectool -g -f -C ~/rpmbuild/SOURCES "$spec"
    rpmbuild -bb "$spec"
done
