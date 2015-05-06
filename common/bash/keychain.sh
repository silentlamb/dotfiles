if [ -x /usr/bin/keychain ] ; then
    /usr/bin/keychain $HOME/.ssh/id_rsa
    if [ -f $HOME/.keychain/${HOSTNAME}-sh ] ; then
	   source $HOME/.keychain/${HOSTNAME}-sh
    fi
fi

