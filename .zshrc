# Set to this to use case-sensitive completion
CASE_SENSITIVE="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
 COMPLETION_WAITING_DOTS="true"

###############################################
# colors and prompt
autoload -U colors && colors
local return_code="%(?..%{$fg[red]%}%? ↵%{$reset_color%})"
PS1="%{$fg[green]%}%n%{$reset_color%}@%{$fg[blue]%}%m %{$fg[yellow]%}%~ %{$reset_color%}%% "
RPROMPT="${return_code} %t"

# rvm
[[ -s "/Users/mseelaus/.rvm/scripts/rvm" ]] && source "/Users/mseelaus/.rvm/scripts/rvm"  # This loads RVM into a  shell session.

unsetopt correct_all

export PATH=/Users/mseelaus/.rvm/rubies/ruby-1.9.2-p290/bin:/Users/mseelaus/.rvm/bin:/usr/local/sbin:/usr/local/bin:$PATH
