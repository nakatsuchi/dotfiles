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

# dummy nvm command to load nvm when required
nvm() {
  unset -f nvm
  . "$HOME/.nvm/nvm.sh"
  nvm "$@"
}
