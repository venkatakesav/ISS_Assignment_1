#!/bin/bash
wc -c $1 | awk '{print $1}'
wc -l $1 | awk '{print $1}'
wc -w $1 | awk '{print $1}'
awk '{++count} {print "Line no: " count "-Count of Words:", NF}' $1
echo
touch temp.txt
cat $1 |tr ' ' '\n' > temp.txt #converting spaces to new lines
sort temp.txt | uniq -c | awk '{print $2 " : " $1}' 
rm temp.txt
