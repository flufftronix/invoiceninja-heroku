#!/usr/bin/env bash

wget https://bitbucket.org/ariya/phantomjs/downloads/phantomjs-2.1.1-linux-x86_64.tar.bz2 -O phantomjs.tar.bz2
mkdir phantomjs
tar xjf phantomjs.tar.bz2 -C phantomjs --strip 1
