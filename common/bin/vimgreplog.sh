#!/bin/bash

function vimgreplog () 
{ 
#	/bin/grep "${1} " dump.log | cut -d' ' -f3- | gvim -c "$(gen_vimlog.sh ${1})" -
	/bin/grep "${1} " dump.log | cut -d' ' -f3- | vim -c "$(gen_vimlog.sh ${1})" -
}


vimgreplog $@
