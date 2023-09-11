#!/usr/bin/zsh
#usage: ./find_homologs <query file> <subject file> <output file> 
tblastn -query $1 -subject $2 -task tblastn -outfmt '6 std qlen' -out $3
awk '$3 > 30 && int($4/$13) > 0.9' $3 | wc -l 
