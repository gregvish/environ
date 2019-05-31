#!/bin/bash
stty -ixon

export EDITOR=vim

export PATH=/opt/ctng/bin:$PATH
export PATH=/opt/jdk/bin:/opt/jre/bin:$PATH
export JAVA_HOME=/opt/jdk

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

# Use fd for fzf
FZF_FIND='fd'
FZF_PARAMS='--hidden --exclude .git --exclude .hg --exclude /home/greg/.cache'

export FZF_DEFAULT_COMMAND="$FZF_FIND --type f $FZF_PARAMS"
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"
export FZF_ALT_C_COMMAND="$FZF_FIND --type d $FZF_PARAMS"

_fzf_compgen_path() {
  $FZF_FIND --type f $FZF_PARAMS . "$1"
}
_fzf_compgen_dir() {
  $FZF_FIND --type d $FZF_PARAMS . "$1"
}
