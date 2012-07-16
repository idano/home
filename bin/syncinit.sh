#!/bin/bash        
set -uex

cd
if [ -d '.git' ]; then
  echo 'init was already run.'
  exit 1
else
  echo "copying keys from server.seelaus.ch"
  scp -r server.seelaus.ch:~/.ssh . || true
  # set perms for authorized_keys if it exists
  sudo chmod u+w ~/.ssh/authorized_keys || true
  sudo chmod 0600 .ssh/*
  git clone git@github.com:idano/home.git /tmp/home
  rsync -a /tmp/home/ .
  rm -rf /tmp/home
  sudo chmod 0600 .ssh/*
  #echo "switching to zsh, you'll have to enter your password'"
  chsh -s /bin/zsh $USER
  grep "bin/synchome" .profile || echo '~/bin/synchome.sh 2>&1 >> .synclog & # periodically upload file changes to git' >> .profile
fi
