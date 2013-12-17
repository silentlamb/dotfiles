local_virtualenvpath="/usr/local/bin/virtualenvwrapper.sh"

python-setup-env ()
{
    [ "${WORKON_HOME}" == "" ] && return
    export VIRTUAL_ENV_DISABLE_PROMPT="true"

    if [ ! -d "$WORKON_HOME" ]; then
        mkdir -p $WORKON_HOME
    fi
    
    source $local_virtualenvpath
}

# Main
if [ -f "$local_virtualenvpath" ]; then
    python-setup-env
fi

# Cleanup
unset local_virtualenvpath

