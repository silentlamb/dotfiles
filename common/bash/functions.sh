function powerline_update_ps1 () 
{ 
	export PS1="$(~/dotfiles/external/powerline-shell/powerline-shell.py $? 2> /dev/null)"
}

function wtle ()
{
	nohup $@ > /dev/null 2>&1 &
	disown
}
complete -F _command wtle

