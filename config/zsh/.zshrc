# Exports
export PATH="$CARGO_HOME/bin:$PATH"
export PATH="$PATH:/home/wan/.local/bin"

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
alias killorphan="sudo pacman -Rns $(pacman -Qdtq)"

# Archivos & procesos
alias c="clear"
alias ls="ls --color=auto"
alias l.="ls -d .* --color=auto"
alias untar="tar -zxvf"
alias edit="sudo nvim"
alias lobby="sudo rm -rf"
alias fuckoff="pkill -u"
alias reload="source ~/.config/zsh/.zshrc"
alias mkdir="mkdir -pv"
alias mount="mount |column -t"
alias ..="cd .."

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
alias gl"git pull"

# VPN
alias vpnon="sudo wg-quick up proton"
alias vpnoff="sudo wg-quick down proton"
alias ping="ping -c 5"
alias fastping="ping -c 100 -s.2"

# Load and initialise completion system
autoload -Uz compinit
compinit
compinit -d "$XDG_CACHE_HOME"/zsh/zcompdump-"$ZSH_VERSION"

# Prompt Themes (clean-detailed, atomic, tokyonight_storm, tokyo, easy-term, gruvbox)
eval "$(oh-my-posh init zsh --config $HOME/.config/ohmyposh/clean-detailed.omp.json)"

# theFUCK
eval $(thefuck --alias FUCK)



