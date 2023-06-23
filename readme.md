


# Overview
This is an example of a simple bash script that builds a hello world program from a unit code file;
unit code file as in everything is included into a single main.cpp file.

The goal of the build system is to make the the build.sh file agnostic to the compiler and linker meaning 
it's unaware of a specefic compiler or linker. If you build using a different compiler or linker then you can 
change that in the build script parameters that are in the local directory of the user of the build system. If you have 
anything that exists inside the unit_file that is compiler specific--i.e. __declspec() in the msvc compiler--, then you're
responsible for providing compiler features that abstract away the compiler--use macros and compiler context cracking--.

# Directions for windows
Download git 

Find the git directory, for me it's: "c:/Program Files/Git/bin", but it could be different for you.
Inside git directory there is a "bin" directory. Inside bin is sh.exe which is the bash interpreter; 
figure out how to run this executable in your editor or from the cmd prompt.

call the bash interpreter with the main build.sh file:      sh.exe c:\path\to\project\sh\build.sh

# Build system directories 
There are two important directories in the build system: "sh" and "local"

## SH
"sh" is the directory responsible for containing all the build files.

## Local
"local" is responsible for containing the compiler and linker agnostic variables that build.sh expects. 

# Gitignore
The gitignore file in this example is "gitignore.txt" normally it would be called ".gitignore".
The build.sh creates a "build" folder that contains the executable, this should be ignored when pushing unless you don't want that.
the "local" directory should be included in the ".gitignore" so no one overwrites anyone else's local build params.

# Build.sh
build.sh compiles the application from any working directory you call it in--the path variables in core_build.sh helps a lot with this--. 
The build file expects a "local\build_params.sh" file that each user of the build system would have their own build_params depending on 
compiler and linker that they decide to use. 
