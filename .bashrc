#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias la='ls -A'
alias ll='ls -Al'
alias vi=nvim

PS1='[\u@\h \W]\$ '
