## Luis Angel Ortega's (@LinkSake) ZSH/OhMyZSH config file ##

# Path to oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Current theme
ZSH_THEME="robbyrussell"

# Uncomment the following line to automatically update without prompting.
DISABLE_UPDATE_PROMPT="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Plugins
plugins=(
    git
    zsh-autosuggestions
    zsh-syntax-highlighting
)

#Oh My ZSH
source $ZSH/oh-my-zsh.sh

# Aliases
alias zshconfig="vim ~/.zshrc" 
alias ohmyzsh="vim ~/.oh-my-zsh"
alias gmji="gitmoji -c"
alias wttr="clear && curl wttr.in"
  # Nextia
alias nextia="cd ~/Documents/nextia"

# asdf-vm
. $(brew --prefix asdf)/asdf.sh
# Rust runtime thingy
export PKG_CONFIG_PATH=/usr/local/opt/openssl/lib/pkgconfi

