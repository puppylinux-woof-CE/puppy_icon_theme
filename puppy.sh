#!/bin/sh
. ./build.conf
make clean && make && make package
