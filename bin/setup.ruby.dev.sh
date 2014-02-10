#!/usr/bin/env bash

# install a basic ruby dev environment

sudo apt-get install build-essential openssl libreadline6 libreadline6-dev curl git-core zlib1g zlib1g-dev libssl-dev libyaml-dev libsqlite3-dev sqlite3 libxml2-dev libxslt-dev autoconf libc6-dev ncurses-dev automake libtool bison subversion pkg-config git curl patch

cd
# install rvm
curl -L https://get.rvm.io | bash -s stable
rvm pkg install --verify-downloads 1 libxxml2
rvm pkg install --verify-downloads 1 libxslt 
rvm pkg install --verify-downloads 1 openssl
rvm pkg install --verify-downloads 1 zlib
rvm install 1.9.2
