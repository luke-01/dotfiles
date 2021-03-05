autoload -U colors && colors

#set history settings
HISTSIZE=10000
SAVEHIST=10000
HISTFILE=~/.cache/zsh/history

autoload -U compinit
zstyle ':completion:*' menu select
zmodload zsh/complist
compinit

#aliases
alias ls='ls --color=auto'
alias la='ls -A'
alias ll='ls -Al'
alias df='df -h'
alias vi=nvim
alias yay='yay --sudoloop'

# variables
export EDITOR=/usr/bin/nvim
export MANPAGER="nvim -c 'set ft:man' -"

neofetch

source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
eval "$(starship init zsh)"
