#!/bin/bash

######## Get Paths ##############
cd "$(dirname "$0")"
cd ..

# root_path="${PWD#/*}"
# root_path="${root_path#/*}"
# root_path="c:/

root_path=$PWD
bin_path="$root_path/bin"
local_path="$root_path/local"
build_path="$root_path/build"
code_path="$root_path/code"
