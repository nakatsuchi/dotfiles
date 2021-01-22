# bash 
set -o vi                   # vi mode
shopt -s globstar # enable '**' pattern
shopt -s autocd # change directory without typing 'cd'
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

# homebrew
case "${OSTYPE}" in
darwin*)
  export PATH=/usr/local/bin:$PATH
  export PATH=/opt/local/bin:/opt/local/sbin:$PATH
  export MANPATH=/opt/local/share/man:/opt/local/man:$MANPATH

  # python installed by homebrew
  if [[ -e "/usr/local/opt/python/libexec/bin" ]]; then
    export PATH=/usr/local/opt/python/libexec/bin:$PATH
  fi

  # pipenv installed by homebrew
  if [[ -e "/usr/local/opt/pyenv" ]]; then
    export PYENV_ROOT=/usr/local/opt/pyenv
  fi

  ;;
esac

# path
export PATH=$HOME/bin:$PATH

# go
export PATH=${HOME}/go/bin:$PATH

# fnm
if type fnm > /dev/null; then
  eval "$(fnm env)"
fi

# google-cloud-sdk
if [[ -e "/usr/local/Caskroom/google-cloud-sdk" ]]; then
  source "/usr/local/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/completion.bash.inc"
  source "/usr/local/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/path.bash.inc"
fi

