#!/bin/bash

# Ensure that an integer argument is provided
if ! [[ "$1" =~ ^[1-9][0-9]*$ ]]; then
    echo "Please provide a positive integer argument"
    exit 1
fi

file_count=$1
input_file="test.txt"
i=1

# Loop through the test files
for ((j = 1; j <= ${file_count}; ++j)); do
    # Read the next three lines from the input file
    read input_line_1
    read input_line_2
    read input_line_3
    input_line_1=${input_line_1#*:}
    input_line_2=${input_line_2#*:}

    # Create the input and output files
    touch "test${j}.in"
    touch "test${j}.out"

    # Write the input lines to the input file
    echo "${input_line_1}" >"test${j}.in"
    echo "${input_line_2}" >>"test${j}.out"

    # Write the expected output to the output file
done <${input_file}
