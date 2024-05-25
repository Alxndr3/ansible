#!/bin/bash


qa=$(hostname | cut -d '-' -f 2)
QA='qa'

if [ $qa == $QA ]; then
    export PS1='\e[30;1m[\e[0m\e[33m\u@\h:\w\e[0m\e[30;1m]\e[0m\n\$ '
else
    export PS1='\e[30;1m[\e[0m\e[31m\u@\h:\w\e[0m\e[30;1m]\e[0m\n\$ '
fi

alias dmesg='dmesg -T'
alias vi='vim'
export HISTTIMEFORMAT='%d/%m/%y %T '
