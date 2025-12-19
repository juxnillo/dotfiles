# Exports
export PATH="$PATH:/home/wan/.local/bin"
export EXA_COLORS="di=35:ln=92:ex93:*.rs=31"

# Plugins Zap
[ -f "${XDG_DATA_HOME:-$HOME/.local/share}/zap/zap.zsh" ] && source "${XDG_DATA_HOME:-$HOME/.local/share}/zap/zap.zsh"
plug "zsh-users/zsh-autosuggestions"
plug "zsh-users/zsh-syntax-highlighting"

# Alias Pacman
alias update="sudo pacman -Syu && yay -Syu"
alias pac="sudo pacman -S"
alias yeet="sudo pacman -Rns"
alias pacls="pacman -Q"
alias aurls="pacman -Qm"
alias aur="yay -S"
alias yeeted="yay -Rns"
alias orphan="pacman -Qdtq"
alias killorphan="sudo pacman -Qtdq | sudo pacman -Rns -"

# Archivos & procesos
alias c="clear"
alias ls='eza --icons --color=always --group-directories-first'
alias ll='eza -alF --icons --color=always --group-directories-first'
alias la='eza -a --icons --color=always --group-directories-first'
alias l='eza -F --icons --color=always --group-directories-first'
alias l.='eza -a | grep -E "^\."'
alias untar="tar -zxvf"
alias edit="sudo nvim"
alias lobby="rm -rf"
alias fuckoff="pkill -u"
alias reload="source ~/.config/zsh/.zshrc"
alias mkdir="mkdir -pv"
alias mount="mount |column -t"
alias ..="cd .."
alias ff="fastfetch"

# Flatpak
alias upak="flatpak update"
alias pak="flatpak install"
alias rmpak="flatpak uninstall"
alias lspak="flatpak list"

# Git
alias gc="git clone"
alias gst="git status"
alias ga="git add"
alias gaa="git add -A"
alias gcmsg="git commit -m"
alias gp="git push"
alias gl="git pull"

# VPN
alias vpnon="sudo wg-quick up proton"
alias vpnoff="sudo wg-quick down proton"
alias ping="ping -c 5"
alias fastping="ping -c 100 -s.2"

# Load and initialise completion system
autoload -Uz compinit
compinit
compinit -d "$XDG_CACHE_HOME"/zsh/zcompdump-"$ZSH_VERSION"

# Prompt Themes (clean-detailed, atomic, tokyonight_storm, tokyo, easy-term, gruvbox, broski)
eval "$(oh-my-posh init zsh --config $HOME/.config/ohmyposh/broski-theme.omp.json)"

# theFUCK
eval $(thefuck --alias FUCK)

export PATH=$PATH:/home/wan/.spicetify
