# Bash 
set -o vi                   # vi mode
export HISTCONTROL=ignoredups      # ignore duplicates
export HISTSIZE=10000            # history size
export HISTFILESIZE=10000        # history size
export HISTIGNORE=ls            # ignore ls command
export PS1="\[\e[1;95m\]\u@\h:\w\$\[\e[1;0m\] "

# Environment 
export EDITOR=vim           # エディタをvimに設定
export LANG=en_US.UTF-8     # 文字コードをUTF-8に設定
export KCODE=u              # KCODEにUTF-8を設定

# aliases
alias ls='ls --color'
alias grep='grep --color'
alias vi=vim

# $HOME/bin
export PATH=$HOME/bin:$PATH

# Ansible
source ~/ansible/hacking/env-setup > /dev/null 2>&1
export ANSIBLE_HOSTS=~/cm/ansible_hosts

# rbenv
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"


export NVM_DIR="/home/shu/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm
