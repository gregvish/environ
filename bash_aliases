#!/bin/bash
stty -ixon

export LANG=en_IL.UTF-8

export EDITOR=vim

export PATH=/opt/ctng/bin:$PATH
export PATH=/opt/go/bin:$PATH

export JAVA_HOME=/opt/jdk
export PATH=$JAVA_HOME/bin:$PATH

export ANDROID_HOME=/home/user/stuff/android
export PATH=$ANDROID_HOME/tools/bin:$PATH

export GOPATH=/home/user/go
export PATH=$GOPATH/bin:$PATH

export PATH=~/executables:$PATH

export PS1="\[\e]0;\w\a\]\n\[\e[32m\]\u@\h \[\e[33m\]\w\[\e[0m\]\n\$ "

if [ -z $SSH_AUTH_SOCK ]; then
    eval `keychain --eval --agents ssh`
fi

export HISTCONTROL=ignoredups:erasedups
export HISTSIZE=-1
export HISTFILESIZE=-1
shopt -s histappend
PROMPT_COMMAND="history -a; $PROMPT_COMMAND"

alias secvim='vim -u NONE -i NONE'
alias l='ls -FC'
alias ll='ls -FCl'
alias la='ls -FCal'
alias demsg='dmesg -T'

# HIDPI scale factor
export QT_AUTO_SCREEN_SCALE_FACTOR=1

# fzf
[ -f ~/.fzf.bash ] && source ~/.fzf.bash || \
                      source /usr/share/doc/fzf/examples/key-bindings.bash

# Use fd for fzf
FZF_FIND='fdfind'
FZF_PARAMS='--hidden --exclude .git --exclude .hg --exclude .cache'

export FZF_DEFAULT_COMMAND="$FZF_FIND --type f $FZF_PARAMS"
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"
export FZF_ALT_C_COMMAND="$FZF_FIND --type d $FZF_PARAMS"

_fzf_compgen_path() {
  $FZF_FIND --type f $FZF_PARAMS . "$1"
}
_fzf_compgen_dir() {
  $FZF_FIND --type d $FZF_PARAMS . "$1"
}
