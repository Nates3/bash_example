#!/bin/bash


compiler="cl"
compile_mode="optimized"
linker="link"
arch="x64"

important_warnings="-wd4189 -wd4100 -wd4702 -wd4101"
warnings="-W4 -WX $important_warnings 
-wd4152 -wd4244 -wd4201 -wd4013 -wd4245 -wd4310 
-wd4211 -wd4057 -wd4115 -wd4305 -wd4502 -wd4518"

# _________________________ platform __________________________________________________
unit_file="$root_path/code/main.cpp"
obj_name="example.obj"
libs="kernel32.lib"
incs="-I$code_path"

compile_defines="-DTEST_COMPILE_DEFINE=1"

# setup compile options
if [ $compile_mode == "debug" ]; then
 compile_options="-Od -Z7"
elif [ $compile_mode == "optimized" ]; then 
 compile_options="-O2"
fi
compile_options="$compile_options $compile_defines -Fo$obj_name -FC -c $warnings -nologo"

#setup linker options
if [ $compile_mode == "debug" ]; then
 link_options="-debug:full"
fi
link_options="$link_options -incremental:no -nologo"

