#!/bin/bash
counter = 1
while  [$counter -le 100 ]
do
ln "f.txt" "f.lock"
lastString = $(tail -n 1 f.txt)
lastString = $(($lastString + 1))
counter = $(expr $counter + 1)
expr $lastString >> f.txt
rm "f.lock"
done
