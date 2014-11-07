#!/bin/bash
stty -ixon

export PATH=/opt/ctng/bin:$PATH
export PATH=/opt/cross/mipsel-unknown-linux-uclibc/bin:$PATH
export PATH=/opt/cross/mips-unknown-linux-uclibc/bin:$PATH
export PATH=/opt/cross/arm-unknown-linux-uclibcgnueabi/bin:$PATH

export PATH=/opt/jdk/bin:/opt/jre/bin:$PATH
export JAVA_HOME=/opt/jdk

export PATH=~/executables:$PATH

export PS1="\[\e]0;\w\a\]\n\[\e[32m\]\u@\h \[\e[33m\]\w\[\e[0m\]\n\$ "

if [ -z $SSH_AUTH_SOCK ]; then
    eval `keychain --eval --agents ssh`
fi

export HISTCONTROL=ignoredups:erasedups
export HISTSIZE=100000
export HISTFILESIZE=100000
shopt -s histappend

alias secvim='vim -u NONE -i NONE'
alias aescat='openssl aes-256-cbc'
alias l='ls -FC'
alias ll='ls -FCl'
alias la='ls -FCal'
