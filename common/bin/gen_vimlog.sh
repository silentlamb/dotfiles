#!/bin/bash

colors=(1 2 3 4 5 6 7 9 10 11 12 13 14 15 46 130 109 69 32 29 184 187)

echo "syntax clear"
echo "set nowrap"
echo ""

let i=0
while read tid; do
	let "i+=1"
#	echo "syntax match jamThread${i} \"${1}\s*${tid} \""
	echo "syntax match jamThread${i} \"${1}\s*${tid} .*$\""
#	echo "highlight CustomGroup${i} ctermfg=Black ctermbg=${colors[${i}]}"
	echo "highlight CustomGroup${i} ctermfg=${colors[${i}]}"
	echo "highlight link jamThread${i} CustomGroup${i}"
	echo ""
done < <(/bin/grep "${1} " dump.log | awk '{print $4}' | sort | uniq)

