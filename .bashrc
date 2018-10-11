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
  export LSCOLORS=gxfxcxdxbxegedabagacad
  alias ls="ls -G"
  ;;
linux*)
  alias ls='ls --color'
  ;;
esac
alias grep='grep --color'
alias vi=vim

# Node.js
if [ -s "$HOME/.nvm/nvm.sh" ] && [ ! "$(type -t __init_nvm)" = function ]; then
  export NVM_DIR="$HOME/.nvm"
  [ -s "$NVM_DIR/bash_completion" ] && . "$NVM_DIR/bash_completion"
  declare -a __node_commands=('nvm' 'node' 'npm' 'yarn' 'gulp' 'grunt' 'webpack')
  function __init_nvm() {
    for i in "${__node_commands[@]}"; do unalias $i; done
    . "$NVM_DIR"/nvm.sh
    unset __node_commands
    unset -f __init_nvm
  }
  for i in "${__node_commands[@]}"; do alias $i='__init_nvm && '$i; done
fi
