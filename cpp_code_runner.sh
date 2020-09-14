#!/bin/sh

# This script compiles C++ code and executes it with input file (if provided) at once
# Usage:
    # ./cpp_code_runner code_file input_file
    
    # code_file can have .cpp or .cc suffix as file extensions
    # input_file can have .txt suffix as file extension

# NOTE: Don't forget to make it executable with below command,
    # chmod +x cpp_code_runner      (command only work for Linux and Unix OS)

code_file=$1
input_file=$2

# check file extensions
if [[ $code_file != *".cpp" && $code_file != *".cc" ]]; then
    echo "Please give a .cpp or .cc file"
    exit
fi

if [[ -n "$input_file" && $input_file != *".txt" ]]; then
    echo "Please give a .txt file as input file"
    exit
fi

# execute code file
echo "Building binary file..."
g++ -std=c++17 $code_file
compilation_result=$?

if [ $compilation_result -ne 0 ]; then
    echo
    echo "Didn't even compile, hahahah :p"
    exit
fi

# run executable file 
    echo "Program execution started!"
    echo
    # without input file
    if [ -z $input_file ]; then
        ./a.out

    # with input file
    else
        ./a.out < $input_file
    fi
