# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions
if [ -f ~/.aliases ]; then
    . ~/.aliases
fi

# Custom functions
if [ -f ~/.bashfunctions.sh ]; then
	. ~/.bashfunctions.sh
fi

#custom prompt
export PS1="[\u@\W]\$ "

#texlive
export PATH=/usr/local/texlive/2014/bin/x86_64-linux:$PATH

