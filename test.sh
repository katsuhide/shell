#!/bin/sh

# find the java file
for file in `find * -name "*.java" -type f | xargs grep -l abstract`;
do 
    wc -l $file;
done;

# count the file rows
rows=0;
for file in `find * -name "*.java" -type f`;
do 
    tmp=`wc -l $file | awk '{print $1}'`;
    rows=`expr $rows + $tmp`;
done;
echo $rows;
