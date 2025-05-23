export XDG_CONFIG_HOME="${XDG_CONFIG_HOME:-$HOME/.config}"
export XDG_DATA_HOME="${XDG_DATA_HOME:-$HOME/.local/share}"
export XDG_STATE_HOME="${XDG_STATE_HOME:-$HOME/.local/state}"
export XDG_CACHE_HOME="${XDG_CACHE_HOME:-$HOME/.cache}"
export XDG_RUNTIME_DIR="${XDG_RUNTIME_DIR:-/run/user/$(id -u)}"
export HISTFILE="$XDG_STATE_HOME/bash/history"
export CARGO_HOME="$XDG_DATA_HOME/cargo"
export DOTNET_CLI_HOME="$XDG_DATA_HOME/dotnet"
export GNUPGHOME="$XDG_DATA_HOME/gnupg"
export XCURSOR_PATH="/usr/share/icons:$XDG_DATA_HOME/icons"
alias  wget="wget --hsts-file=$XDG_DATA_HOME/wget-hsts"
export WINEPREFIX="$XDG_DATA_HOME/wine"
export PATH="$CARGO_HOME/bin:$PATH"
export ZDOTDIR="$HOME/.config/zsh"
export GTK2_RC_FILES="$XDG_CONFIG_HOME/gtk-2.0/gtkrc"
export WAKATIME_HOME="$XDG_CONFIG_HOME/wakatime"
export NPM_CONFIG_INIT_MODULE="$XDG_CONFIG_HOME/npm/config/npm-init.js"
export NPM_CONFIG_CACHE="$XDG_CACHE_HOME/npm"
export NPM_CONFIG_TMP="$XDG_RUNTIME_DIR/npm"
export ZDOTDIR="$XDG_CONFIG_HOME"/zsh
export $XDG_CONFIG_HOME/vscode
source "$ZDOTDIR"






