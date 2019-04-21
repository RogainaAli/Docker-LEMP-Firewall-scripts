#!/bin/bash

echo "Please enter a file extension: "
read ext
echo "Please enter a file prefix: "
read pref

echo " please enter directory path "
read dir
cd $dir
if [[ -z $pref ]]; 
then 
for file in *.$ext
do
    mv "$file" "$(date +%d-%m-%Y) $file"
done
else

for file in *.$ext
do
    mv "$file" "$pref $file"
done
fi