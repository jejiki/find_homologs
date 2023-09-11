#!/usr/bin/zsh
#usage: ./find_perfect_matches.sh <query file> <subject file> <output file> 
blastn -query $1 -subject $2 -task blastn-short -outfmt '6 std sseq' -out $3

awk '$3 == 100.000 && $4 == $8' $3 | wc -l 
