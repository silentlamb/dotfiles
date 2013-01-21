export HOSTNAME=$(hostname)
if [ -x /usr/bin/keychain -a -f $HOME/.keychain/${HOSTNAME}-sh ] ; then
    /usr/bin/keychain $HOME/.ssh/id_rsa
    source $HOME/.keychain/${HOSTNAME}-sh
fi


