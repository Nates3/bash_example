#!/bin/bash

######### GET PATHS #####################
bin_path="$(dirname "$0")"
source "$bin_path/build_core.sh"

############## source local options ######################

source "$local_path/build_params.sh"

mkdir -p $build_path
cd $build_path

# Compile the platform into an .obj file (ASSUMES COMPILER IS MSVC)
echo ____compiling____
$compiler $compile_options $incs $unit_file
echo ____linking____
$linker $link_options $build_path/$obj_name $libs
