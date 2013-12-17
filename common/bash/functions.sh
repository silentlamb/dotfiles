function powerline_update_ps1 () 
{ 
	export PS1="$(powerline-shell.py $? 2> /dev/null)"
}

