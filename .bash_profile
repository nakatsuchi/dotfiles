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

# conda
if [ -e "$HOME/conda" ]; then
  export PATH="$HOME/conda/bin:$PATH"
fi

# Node.js
if [ -e "$HOME/.nvm/nvm.sh" ]; then
  . "$HOME/.nvm/nvm.sh"
fi

# golang
if [ -e "$HOME/go" ]; then
  export GOROOT="$HOME/go"
  export PATH="$HOME/go/bin:$PATH"
fi
