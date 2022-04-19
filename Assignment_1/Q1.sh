#!/bin/bash
grep . quotes.txt > temp.txt
sort temp.txt | uniq -u > temp1.txt
rm temp.txt
rm quotes.txt
mv temp1.txt quotes.txt




