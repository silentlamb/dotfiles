let HOSTNAME=$(hostname)
if [ -x /usr/bin/keychain ] ; then
    /usr/bin/keychain $HOME/.ssh/id_rsa
    [ -f $HOME/.keychain/${HOSTNAME}-sh ] && source $HOME/.keychain/${HOSTNAME}-sh
fi

