#!/usr/bin/zsh
#usage: ./find_perfect_matches.sh <query file> <subject file> <output file> 
tblastn -query $1 -subject $2 -task tblastn -outfmt '6 std qlen' -out $3

awk '$3 > 30.000' > $3 | wc -l 
# && ($4/$13) > 90.000