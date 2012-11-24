#
# Executes commands at the start of an interactive session.
#
# Authors:
#   Sorin Ionescu <sorin.ionescu@gmail.com>
#

# Source Prezto.
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

# Customize to your needs...
bindkey '^R' history-incremental-search-backward 
export EDITOR=vim

export TERM=xterm-256color
#PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting
#test -d ~/.rvm && source ~/.rvm/scripts/rvm
#rvm --help 2>&1 > /dev/null && rvm use 1.9.3
