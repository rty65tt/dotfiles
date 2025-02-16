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

#PS1='[\u@\h \W]\$ '
PS1="\[\e[32m\][\[\e[m\]\[\e[32m\]\u\[\e[m\]\[\e[33m\]@\[\e[m\]\[\e[32m\]\h\[\e[m\] \[\e[35m\]\W\[\e[m\]\[\e[32m\]]\[\e[m\]\[\e[33m\]\\$\[\e[m\] "

alias sudo="sudo -E " # carry over environment to sudo commands
alias ls='ls --color=auto'
alias ll='ls -Alh'
alias l='ls -lh'
alias grep='grep -i --color=auto'
alias df='env LANG=en_US.UTF-8 df -hT'
alias sdf='df -x tmpfs'
#alias sdf='btrfs filesystem df /'
alias free='free -h'
alias cp="cp -i"      # confirm before overwriting something
alias mv="mv -i" # confirm before overwriting something
alias vi="nvim"        # honestly, this is just nice
alias snvim="sudo nvim" # edit protected files with vim
#alias du='ncdu'
alias man='tldr'
alias gdb='gdb -silent'
alias yrt='yaourt'


PATH=$PATH:~/.local/bin

#export LANG=en_US.UTF-8
export HISTCONTROL=ignoredups:erasedups
export HISTSIZE=
export HISTFILESIZE=
export VISUAL="nvim"
export PAGER="less"
