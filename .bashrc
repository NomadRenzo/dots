# ~/.bashrc: executed by bash(1) for non-login shells.

export PS1='\h:\w\$ '
umask 022
# increase history size and make history be appended
export HISTSIZE=10000
shopt -s histappend
shopt -s cdable_vars
export perf="/root/perf"
export pro="/root/dev/pythong/game/pro"
export EDITOR="/usr/bin/vim"
# this only works in terminal, in .bash_history it shows up as unix timestamp unformatted
export HISTTIMEFORMAT='%F %T '
# prevent ctrl D logout
set -o ignoreeof
set -o vi
set completion-ignore-case on
set cdable_vars
# You may uncomment the following lines if you want `ls' to be colorized:
export LS_OPTIONS='--color=auto'
eval "`dircolors`"
alias ls='ls $LS_OPTIONS'
alias ll='ls -lh'
alias la='ls -lha'
# bindings
# bind commands
bind '"\C-e":"ls\r"'
# aliases
alias grep="grep --color=auto"
alias g='grep'
alias pgrep='pgrep -lf'
alias ahelp='apropos'
alias ..='cd ..'
alias c-='cd -'
alias reapache="/etc/init.d/apache2 restart"
# alias ls='ls -lh'
alias df='df -h'
alias du='df -h'
# create parent directories and print out verbose
alias mkdir='mkdir -p -v'
# prevent overwrite and give a prompt
# alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'

# autocompletion
source /etc/bash_completion
CDPATH=$CDPATH:~/dev/python/:~/dev/python/game
export CDPATH

# alias ll='ls $LS_OPTIONS -l'
# alias l='ls $LS_OPTIONS -lA'
#
# Some more alias to avoid making mistakes:
# alias rm='rm -i'
# alias cp='cp -i'
# alias mv='mv -i'
