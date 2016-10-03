export ZSH=/Users/ben/.oh-my-zsh
export PATH=$PATH:/Users/ben/home/bin

BASE16_SHELL=$HOME/.config/base16-shell/
[ -n "$PS1" ] && [ -s $BASE16_SHELL/profile_helper.sh ] && eval "$($BASE16_SHELL/profile_helper.sh)"

#ZSH_THEME="robbyrussell"
#ZSH_THEME="agnoster"

plugins=(git, sublime)

source ~/zsh/bundle/antigen.zsh

# Load the oh-my-zsh's library.
antigen use oh-my-zsh

###########################
#  Plugins
###########################
antigen bundle git
antigen bundle marzocchi/zsh-notify
antigen bundle mosh
antigen bundle nvm
antigen bundle osx
antigen bundle pass
antigen bundle vi-mode
antigen bundle vundle
antigen bundle z
antigen bundle zsh-users/fizsh
antigen bundle zsh-users/zsh-completions
antigen bundle zsh-users/zsh-history-substring-search
antigen bundle zsh-users/zsh-syntax-highlighting
antigen apply

source $ZSH/oh-my-zsh.sh

# load autosuggest as last
antigen bundle tarruda/zsh-autosuggestions

# quote pasted URLs
autoload -U url-quote-magic
zle -N self-insert url-quote-magic

# Prompt
autoload -U promptinit; promptinit
prompt pure


# User configuration

###############################################################################
# Default programs
###############################################################################
if [ -x "$(command -v nvim)" ]; then
  export EDITOR="nvim"
else
  export EDITOR="vim"
fi


export GHI_PAGER=less

export LANG=en_US.UTF-8

DEFAULT_USER="Ben"

export PATH="$HOME/.composer/vendor/bin:$PATH"

# Force tmux to render correctly
alias tmux="TERM=screen-256color-bce tmux -u2"

alias f='open -a Finder'

alias ff='open -a Finder .'

alias o='open'

alias cls='clear'

alias lastmodified='ls -t $* 2> /dev/null | head -n 1'


google() {
  for term in $@; do
      search="$search%20$term"
  done
  open "http://www.google.com/search?q=$search"
}

prompt_context () { }
