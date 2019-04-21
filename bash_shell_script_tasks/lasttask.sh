#!/bin/bash
var1="user changed password"
var2="user changed profile"


grep -w "$var1" log_file | awk '{print $5}' >> exact_time

unwanted_time=`grep -w "$var2" log_file | awk '{print $5}'`
grep -v $unwanted_time exact_time >> temp && mv temp exact_time 

grep -A 1 -B 1 -w "$var1" log_file >> temp1

for i in `cat exact_time`
do
grep -w $i temp1 >> temp2
count=`wc -l < temp2` 
if [ $count -eq 3 ]
then
cat temp2 >> output
fi
rm -rf temp2
done 
rm -rf temp1 exact_time temp
cat output


