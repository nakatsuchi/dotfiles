source ~/.bashrc

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

# pyenv
if [ -e "$HOME/.pyenv" ]; then
  export PYENV_ROOT="$HOME/.pyenv"
  export PATH="$PYENV_ROOT/bin:$PATH"
  eval "$(pyenv init -)"
  #eval "$(pyenv virtualenv-init -)"
fi

# golang
if [ -e "$HOME/go" ]; then
  export GOROOT="$HOME/go"
  export PATH="$HOME/go/bin:$PATH"
fi

# rust
if [ -e "$HOME/.cargo" ]; then
  export PATH="$HOME/.cargo/bin:$PATH"
fi

# google-cloud-sdk
if [ -e "$HOME/google-cloud-sdk" ]; then
  export PATH="$HOME/google-cloud-sdk/bin:$PATH"
fi

