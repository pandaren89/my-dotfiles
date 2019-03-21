#!/bin/bash

# Allow ctrl-S for history navigation (with ctrl-R)
stty -ixon 

# Auto cd
shopt -s autocd 

# Infinite history.
HISTSIZE= HISTFILESIZE= 

# Disable the bell
if [[ $iatest > 0 ]]; then bind "set bell-style visible"; fi

# Enable bash programmable completion features in interactive shells
if [ -f /usr/share/bash-completion/bash_completion ]; then
	. /usr/share/bash-completion/bash_completion
elif [ -f /etc/bash_completion ]; then
	. /etc/bash_completion
fi


# Ultimate prompt
export PS1="\[$(tput bold)\]\[$(tput setaf 1)\][\[$(tput setaf 3)\]\u\[$(tput setaf 2)\]@\[$(tput setaf 4)\]\h \[$(tput setaf 5)\]\W\[$(tput setaf 1)\]]\[$(tput setaf 7)\]\\$ \[$(tput sgr0)\]"

# Alias
[ -f "$HOME/.aliasrc" ] && source "$HOME/.aliasrc"


