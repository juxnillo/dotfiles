# Created by Zap installer
[ -f "${XDG_DATA_HOME:-$HOME/.local/share}/zap/zap.zsh" ] && source "${XDG_DATA_HOME:-$HOME/.local/share}/zap/zap.zsh"
plug "zsh-users/zsh-autosuggestions"
plug "zap-zsh/supercharge"
plug "zsh-users/zsh-syntax-highlighting"

#Alias Pacman
alias update="sudo pacman -Syu"
alias yeet="sudo pacman -Rns"
alias pac="sudo pacman -S"
alias pacls="sudo pacman -Q"
alias pacyeet="sudo pacman -Rns $(pacman -Qdtq)"
alias upgrade="yay -Syu"
alias yeeted="yay -Rns"
alias aur="yay -S"

#Archivos & procesos
alias untar="tar -zxvf"
alias edit="sudo nano"
alias lobby="sudo rm -rf"
alias fuckoff="pkill -u"
alias reload="source ~/.config/zsh/.zshrc"
alias mk="sudo mkdir"

#Flatpak
alias upak="flatpak update"
alias rmpak="flatpak uninstall"
alias pak="flatpak install"
alias lspak="flatpak list"

#Git
alias config="/usr/bin/git --git-dir=$HOME/repos/Wallpapers/wallpapers --work-tree=$HOME'"

# Load and initialise completion system
autoload -Uz compinit
compinit
compinit -d "$XDG_CACHE_HOME"/zsh/zcompdump-"$ZSH_VERSION"

#Prompt
eval "$(oh-my-posh init zsh --config $HOME/.config/ohmyposh/clean-detailed.omp.json)"

#Themes (clean-detailed, atomic, tokyonight_storm, tokyo, easy-term, gruvbox)

export PATH="$CARGO_HOME/bin:$PATH"
