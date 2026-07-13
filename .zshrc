# Created by newuser for 5.9.1

alias ls='ls --color=auto'
alias ll='ls -la --color=auto'

alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'

PROMPT='%F{green}%n@%M%f %F{blue}%~%f $ '

source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh

autoload -Uz compinit
compinit

HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=10000

setopt appendhistory
setopt sharehistory
setopt hist_ignore_all_dups

bindkey '^[[A' up-line-or-search
bindkey '^[[B' down-line-or-search

eval "$(starship init zsh)"
