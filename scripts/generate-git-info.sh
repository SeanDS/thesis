#!/bin/bash

# path to use - first argument
metadir=$1

# current git hash
hash=`git rev-parse --short HEAD`

# current time
compiletime=`date -u +"%Y-%m-%d %H:%M:%S"`

# create a file containing the current git commit hash and date
echo "Compiled $compiletime (\#$hash)" > $metadir