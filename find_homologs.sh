#!/usr/bin/zsh
#usage: ./find_perfect_matches.sh <query file> <subject file> <output file> 
tblastn -query $1 -subject $2 -task tblastn-fast -outfmt '6 std qlen' -out $3
awk '$3 > 30 && int($4/$13) > 0.9' | wc -l 


