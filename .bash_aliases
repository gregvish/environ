#!/bin/bash
stty -ixon
export PATH=~/executables:$PATH
export PS1="\[\e]0;\w\a\]\n\[\e[32m\]\u@\h \[\e[33m\]\w\[\e[0m\]\n\$ "
