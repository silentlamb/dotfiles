function powerline_update_ps1 () 
{ 
    if [ -e "~/dotfiles/external/powerline-shell/powerline-shell.py" ]; then
        export PS1="$(~/dotfiles/external/powerline-shell/powerline-shell.py $? 2> /dev/null)"
    fi
}

function wtle ()
{
	nohup $@ > /dev/null 2>&1 &
	disown
}
complete -F _command wtle

