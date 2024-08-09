#!/bin/bash

rm -rf ../topthink-framework
rsync -a -f"+ */" -f"- *" . ../topthink-framework

for i in `cat src.list`
do
    echo "phptobpc $i"
    phptobpc $i > ../topthink-framework/$i
done
cp src.list Makefile ../topthink-framework/
