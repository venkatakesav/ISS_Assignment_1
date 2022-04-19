#!/bin/bash
grep . quotes.txt > temp.txt
rm quotes.txt
mv temp.txt quotes.txt
awk -F~ '{if(NF != 0)print $2 " once said,""\""$1"\""}' quotes.txt > speech.txt


