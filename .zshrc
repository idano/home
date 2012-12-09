#
# Executes commands at the start of an interactive session.
#
# Authors:
#   Sorin Ionescu <sorin.ionescu@gmail.com>
#

export TERM=xterm-256color
# Source Prezto.
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

# Customize to your needs...
bindkey '^R' history-incremental-search-backward 
export EDITOR=vim

test -d ~/.rvm && source ~/.rvm/scripts/rvm && rvm use 1.9.2
test -x ~/bin/synchome.sh && ~/bin/synchome.sh
