# bash 
set -o vi                   # vi mode
export HISTCONTROL=ignoredups      # ignore duplicates
export HISTSIZE=10000            # history size
export HISTFILESIZE=10000        # history size
export HISTIGNORE=ls            # ignore ls command
export PS1="\[\e[1;95m\]\u@\h:\w\$\[\e[1;0m\] "

# language 
export EDITOR=vim
export LANG=en_US.UTF-8
export KCODE=u

# aliases
case "${OSTYPE}" in
darwin*)
  alias ls="ls -G"
  ;;
linux*)
  alias ls='ls --color'
  ;;
esac
alias grep='grep --color'
alias vi=vim

# homebrew
case "${OSTYPE}" in
darwin*)
  export PATH=/usr/local/bin:$PATH
  export PATH=/opt/local/bin:/opt/local/sbin:$PATH
  export MANPATH=/opt/local/share/man:/opt/local/man:$MANPATH
  ;;
esac

# $HOME/bin
export PATH=$HOME/bin:$PATH

# rbenv
if [ -e "$HOME/.rbenv" ]; then
  export PATH="$HOME/.rbenv/bin:$PATH"
  eval "$(rbenv init -)"
fi

# Python
if [ -e "$HOME/.pyenv" ]; then
  export PYENV_ROOT="$HOME/.pyenv"
  export PATH="$PYENV_ROOT/bin:$PATH"
  eval "$(pyenv init -)"
fi

# Node.js
[ -s "$HOME/.nvm/nvm.sh" ] && . "$HOME/.nvm/nvm.sh"  # This loads nvm
