#!/bin/bash        
set -uex

function usage {
  cat << EOF
  Usage: `basename $0` [-f] 

  Example: `basename $0` -k

  options:
    -k copy keys from server.seelaus.ch (default: no)
    -h print this help message
EOF
  exit 1
}

COPY_KEYS=false
while getopts "khvo" OPTION; do
  case $OPTION in
    k) COPY_KEYS=true;;
    h) usage;;
    [?]) usage;;
  esac
done           

cd
if [ -d '.git' ]; then
  echo 'init was already run.'
  exit 1
else
  if ! $COPY_KEYS ; then
    echo ""
    read -p "Copy SSH keys from server.seelaus.ch? (yes/no)" COPYPLEASE
    if [[ $COPYPLEASE = "yes" ]]; then
      COPY_KEYS=true
    fi
  fi
  $COPY_KEYS && echo "copying keys from server.seelaus.ch"
  $COPY_KEYS && scp -r server.seelaus.ch:~/.ssh . || true
  # set perms for authorized_keys if it exists
  $COPY_KEYS && sudo chmod u+w ~/.ssh/authorized_keys || true
  $COPY_KEYS && sudo chmod 0600 .ssh/*
  git clone git@github.com:idano/home.git /tmp/home
  rsync -a /tmp/home/ .
  rm -rf /tmp/home
  sudo chmod 0600 .ssh/*
  #echo "switching to zsh, you'll have to enter your password'"
  chsh -s /bin/zsh $USER
  grep "bin/synchome" .profile || echo '~/bin/synchome.sh 2>&1 >> .synclog & # periodically upload file changes to git' >> .profile
fi
