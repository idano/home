# Set to this to use case-sensitive completion
CASE_SENSITIVE="true"
setopt bash_autolist

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
COMPLETION_WAITING_DOTS="true"

###############################################
# colors and prompt
autoload -U colors && colors
local return_code="%(?..%{$fg[red]%}%? ↵%{$reset_color%})"
PS1="%{$fg[blue]%}%~ %{$reset_color%}%% "
RPROMPT="%{$fg[green]%}%n%{$reset_color%}@%{$fg[yellow]%}%m %{$fg[red]%}${return_code} %{$reset_color%}%t"
# save history and make it available to all shells
setopt inc_append_history
setopt share_history
HISTSIZE=10000
SAVEHIST=10000
HISTFILE=~/.zsh_history

#unsetopt correct_all

[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm" # Load RVM function

