#!/bin/sh

# find the java file
for file in `find . -name "*.java" | xargs grep -l "abstract" *`;
do 
    wc -l $file;
done;

# count the file rows


