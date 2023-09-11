#!/usr/bin/zsh
#usage: ./find_perfect_matches.sh <query file> <subject file> <output file> 
blastx -query $1 -subject $2 -task blastx-fast -outfmt '6 std sseq' -out $3

#awk '$3 >= 30.000 && $4 == $8' $3 | wc -l 
