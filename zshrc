export ZSH=/Users/r17/.oh-my-zsh
export PATH=$PATH:/Users/r17/bin
export PATH=${PATH}:/Development/android-sdk/platform-tools:/Development/android-sdk/tools

BASE16_SHELL=$HOME/.config/base16-shell/
[ -n "$PS1" ] && [ -s $BASE16_SHELL/profile_helper.sh ] && eval "$($BASE16_SHELL/profile_helper.sh)"

#ZSH_THEME="robbyrussell"
#ZSH_THEME="agnoster"

# plugins=(git, sublime, zsh-autosuggestions, zsh-history-substring-search)
plugins=(git, sublime, zsh-autosuggestions)

# source ~/zsh/bundle/antigen.zsh
source /usr/local/share/antigen/antigen.zsh

# Load the oh-my-zsh's library.
antigen use oh-my-zsh

###########################
#  Plugins
###########################
antigen bundle git
antigen bundle sublime
antigen bundle osx
antigen bundle vi-mode
antigen bundle vundle
antigen bundle z
antigen bundle zsh-users/fizsh
antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle zsh-users/zsh-completions
#antigen bundle zsh-users/zsh-history-substring-search
antigen bundle fzf-completion

source $ZSH/oh-my-zsh.sh

# load autosuggest as last
antigen bundle tarruda/zsh-autosuggestions

antigen apply

# quote pasted URLs
# autoload -U url-quote-magic
# zle -N self-insert url-quote-magic

# Prompt
autoload -U promptinit; promptinit
prompt pure

export NVM_DIR="$HOME/.nvm"
 . "/usr/local/opt/nvm/nvm.sh"


# User configuration

###############################################################################
# Default programs
###############################################################################

export LANG=en_US.UTF-8

DEFAULT_USER="Ben"

export PATH="$HOME/.composer/vendor/bin:$PATH"

export EDITOR="vim"

# export PATH=/Applications/MAMP/bin/php/php7.0.20/bin:$PATH
# export PATH="$(brew --prefix homebrew/php/php71)/bin:$PATH"

# Force tmux to render correctly
alias tmux="TERM=screen-256color-bce tmux -u2"

alias f='open -a Finder'

alias ff='open -a Finder .'

alias o='open'

alias cls='clear'

alias lastmodified='ls -t $* 2> /dev/null | head -n 1'

alias yrn='/Users/r17/dev/github/yarn/node_modules/yarn/bin/yarn'

alias kw='week'

alias comp='docker-compose'

alias home='cd ~/home'

alias v='vim $(fzf --height 60%)'


alias kaz='~/ben/kazooie/lib/cli.js'

alias gits='git status'



alias watch-css='nodemon -e scss -x sassc --style compressed scss/default.scss css/default.css'

google() {
 for term in $@; do
     search="$search%20$term"
 done
 open "http://www.google.com/search?q=$search"
}

prompt_context () { }

# Fuzzy finder
# [ -f ~/.fzf.zsh ] && source ~/.fzf.zshsource /usr/local/share/zsh-history-substring-search/zsh-history-substring-search.zsh

# h - repeat history
h() {
  print -z $( ([ -n "$ZSH_NAME" ] && fc -l 1 || history) | fzf +s --tac | sed 's/ *[0-9]* *//')
}
export PATH="/usr/local/opt/php@7.1/bin:$PATH"
