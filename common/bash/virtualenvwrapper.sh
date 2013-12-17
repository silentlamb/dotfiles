# ========= #
# Variables #
# ========= #
local_virtualenvpath="/usr/local/bin/virtualenvwrapper.sh"

# ========= #
# Functions #
# ========= #
python-setup-env () {

    export WORKON_HOME=~/Data/PythonEnvs
    export VIRTUAL_ENV_DISABLE_PROMPT="true"

    if [ ! -d "$WORKON_HOME" ]; then
        mkdir -p $WORKON_HOME
    fi
    
    source $local_virtualenvpath
}

# ========= #
# Main code #
# ========= #
if [ -f "$local_virtualenvpath" ]; then
    python-setup-env
fi


# ======== #
# Clean up #
# ======== #
unset local_virtualenvpath

