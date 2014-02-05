#!/bin/bash
stty -ixon
export PATH=~/executables:$PATH
export PS1="\[\e]0;\w\a\]\n\[\e[32m\]\u@\h \[\e[33m\]\w\[\e[0m\]\n\$ "

if [ -z $SSH_AUTH_SOCK ]; then
    eval `keychain --eval --agents ssh`
fi

export HISTCONTROL=ignoredups:erasedups
export HISTSIZE=100000
export HISTFILESIZE=100000
shopt -s histappend

