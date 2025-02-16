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
alias snim="sudo nvim" # edit protected files with vim
alias du='ncdu'
alias man='tldr'
alias yrt='yaourt'
