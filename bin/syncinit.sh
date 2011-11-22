#!/bin/bash        
set -ue

if [ `whoami` != 'mseelaus' ]; then
    echo 'please run this script as user mseelaus'
    exit 1
else
    cd
    if [ -d '.git' ]; then
        echo 'init was already run.'
        exit 1
    else
        echo 'go'
        # get keys from manubuntu
# TODO: get from another server (ssvm)
        # set perms for authorized_keys if it exists
        chmod u+w ~/.ssh/authorized_keys || true
        scp -r mseelaus.np.wc1.yellowpages.com:~/.ssh .
        chmod 0600 .ssh/*
# TODO: check if git is installed
        #git clone git@git.corp.attinteractive.com:mseelaus/home.git
        git clone git@github.com:idano/home.git
        rsync -a home/ .
        rm -rf home
        chmod 0600 .ssh/*
        echo '# periodically upload file changes to git' >> .bashrc
        echo '~/bin/synchome.sh 2>&1 >> .synclog &' >> .bashrc
    fi
fi         