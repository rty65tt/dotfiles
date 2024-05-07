#
# ~/.bashrc
#

# Use the system config if it exists
if [ -f /etc/bashrc ]; then
    . /etc/bashrc        # --> Read /etc/bashrc, if present.
elif [ -f /etc/bash.bashrc ]; then
    . /etc/bash.bashrc   # --> Read /etc/bash.bashrc, if present.
fi

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '


alias sdf='btrfs filesystem df /'
alias ls="ls --color=auto "
alias ll='ls -Alh'
alias l='ls -lh'
alias grep='grep -i --color=auto'
alias df='env LANG=en_US.UTF-8 df -hT'
alias free='free -h'
alias yrt='yaourt'

alias sudo="sudo -E " # carry over environment to sudo commands
alias cp="cp -i"      # confirm before overwriting something
alias mv="mv -i" # confirm before overwriting something

alias snim="sudo nvim" # edit protected files with vim
alias vi="nvim"        # honestly, this is just nice

#export LANG=en_US.UTF-8

export HISTCONTROL=ignoredups:erasedups
export HISTSIZE=
export HISTFILESIZE=

export VISUAL="nvim"
export PAGER="less"






