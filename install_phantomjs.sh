#!/usr/bin/env bash

pwd
ls

echo "---> Downloading PhantomJS"
wget -q https://bitbucket.org/ariya/phantomjs/downloads/phantomjs-2.1.1-linux-x86_64.tar.bz2 -O phantomjs.tar.bz2

echo "---> Unpacking PhantomJS"
mkdir phantomjs
tar xjf phantomjs.tar.bz2 -C phantomjs --strip 1
rm phantomjs.tar.bz2

echo "---> Done."

ls