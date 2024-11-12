autoload -U compinit && compinit

source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

export PS1="%B%F{red}%m%f %F{green}%1~%f $%b "

alias ls="eza"
alias ll="eza -al"
alias la="eza -a"
alias cd="z"

eval "$(zoxide init zsh)"

fastfetch -s Title:Separator:OS:Host:Kernel:Uptime:Packages:Shell:WM:Font:Terminal:CPU:Break:Colors
