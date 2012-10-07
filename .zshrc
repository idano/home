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

echo "starting tmux"
tmux attach
PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting
