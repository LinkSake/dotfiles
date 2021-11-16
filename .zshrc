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
# Git
alias gmji="gitmoji -c"
alias gls="git branch -l | cat"
# Growth Constant
alias gc="cd ~/Documents/gc"
alias gcvd="cd ~/Documents/gc/virtual-dash"
alias gcbi="cd ~/Documents/gc/build-it"
alias rvd="docker-compose -f ./docker/docker-compose.yml run --service-ports -d --rm web && docker-compose -f ./docker/docker-compose.yml run --service-ports -d --rm worker"
alias upbi="docker-compose -f ~/Documents/gc/build-it/docker/docker-compose.yml --env-file ~/Documents/gc/build-it/.env up -d"
alias downbi="docker-compose -f ~/Documents/gc/build-it/docker/docker-compose.yml --env-file ~/Documents/gc/build-it/.env down"
