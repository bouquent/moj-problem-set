#!/bin/bash

GIT_CMD=git
$GIT_CMD pull 

cd ../problem_data/
IFS=$'\n'
for f_name in `ls -N1`
do
    if [[ ${f_name} == '..' ]]
    then
        continue;
    elif [[ ${f_name} == '.' ]]
    then
        continue;
    fi
    num=${f_name%%.*}
    cp $f_name /mnt/moj/${num}.zip
done

