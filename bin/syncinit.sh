#!/bin/bash        
set -uex

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
        sudo chmod u+w ~/.ssh/authorized_keys || true
        scp -r server.seelaus.ch:~/.ssh . || true
        sudo chmod 0600 .ssh/*
# TODO: check if git is installed
        #git clone git@git.corp.attinteractive.com:mseelaus/home.git
        git clone git@github.com:idano/home.git
        rsync -a home/ .
        rm -rf home
        sudo chmod 0600 .ssh/*
        #echo "switching to zsh, you'll have to enter your password'"
        #chsh -s /bin/zsh mseelaus
        echo '# periodically upload file changes to git' >> .profile
        echo '~/bin/synchome.sh 2>&1 >> .synclog &' >> .profile
    fi
fi         
