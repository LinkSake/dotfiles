## Luis Angel Ortega's (@LinkSake) ZSH/OhMyZSH config file ##

## Editor
export EDITOR=hx

# Path to oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh
export DOTFILES=$HOME/Documents/dotfiles

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

# Oh My ZSH
source $ZSH/oh-my-zsh.sh

# Binaries & Other executables
## Work (macOS)
### asdf
. /opt/homebrew/opt/asdf/libexec/asdf.sh
### direnv
source "${XDG_CONFIG_HOME:-$HOME/.config}/asdf-direnv/zshrc"
### Postgresql
export PATH=/opt/homebrew/Cellar/postgresql@13/13.12/bin:$PATH
## ElixirLS
export PATH=$PATH:$HOME/.elixir-ls/release

# Manpager
export MANPAGER="sh -c 'col -bx | bat -l man -p'"

# Aliases
[ -r $DOTFILES/.aliases ] && source $DOTFILES/.aliases
