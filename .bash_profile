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

# Python
if [ -e "$HOME/.pyenv" ]; then
  export PYENV_ROOT="$HOME/.pyenv"
  export PATH="$PYENV_ROOT/bin:$PATH"
  eval "$(pyenv init -)"
fi

# Node.js
if [ -s "$HOME/.nvm/nvm.sh" ]; then
  . "$HOME/.nvm/nvm.sh"
fi
