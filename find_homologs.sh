#!/usr/bin/bash
#usage: ./find_homologs <query file> <subject file> <output file> 
temp=temp.txt
echo ' ' > $temp
touch $temp
tblastn -query $1 -subject $2 -task tblastn-fast -outfmt '6 std qlen' -out $3
awk '$3 > 30 && $4/$13 > 0.9' $3 | wc -l
