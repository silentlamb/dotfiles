function powerline_update_ps1 () 
{ 
	export PS1="$(~/dotfiles/external/powerline-shell/powerline-shell.py $? 2> /dev/null)"
}

