## Luis Angel Ortega's (@LinkSake) ZSH/OhMyZSH config file ##

# Path to oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Current theme
ZSH_THEME="robbyrussell"

# Uncomment the following line to automatically update without prompting.
DISABLE_UPDATE_PROMPT="true"

# Plugins
plugins=(
    git
    zsh-autosuggestions
    zsh-syntax-highlighting
)

#Oh My ZSH
source $ZSH/oh-my-zsh.sh

# Manpager
export MANPAGER="sh -c 'col -bx | bat -l man -p'"

# Aliases
alias zshconfig="vim ~/.zshrc" 
alias ohmyzsh="vim ~/.oh-my-zsh"
alias wttr="clear && curl wttr.in"
# Docker
alias dstop="docker stop $(docker ps -a -q)"
# Git
alias gmji="gitmoji -c"
alias gls="git branch -l | cat"
# Growth Constant
alias gc="cd ~/Documents/gc"
alias gcvd="cd ~/Documents/gc/virtual-dash"
alias rvd="docker-compose -f ./docker/docker-compose.yml run --service-ports -d --rm web && docker-compose -f ./docker/docker-compose.yml run --service-ports -d --rm worker"