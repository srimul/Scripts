#!/bin/bash
#USe% is more than input value return the subdirectory

df -h | sed -e "s/[[:space:]]\+/ /g" | grep -v "Use%" |cut -d ' ' -f5-6 > dfresult.txt
echo " enter utilization percentage :\c"
read num1
while read line
do
        n2=`echo $line| cut -d '%' -f1`
        if [ $n2 -ge $num1 ]
        then
                echo "Higher utilization fileSystem :$line"
        fi
done < dfresult.txt