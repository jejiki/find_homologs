#!/usr/bin/zsh
#usage: ./find_perfect_matches.sh <query file> <subject file> <output file> 
tblastn -query $1 -subject $2 -task tblastn-fast -outfmt '6 std qlen'
awk '($3*1) > 30.000 && ($4*1)/($13*1) * 100 > 90.000' > $3 | wc -l 
