# ~/.zshrc

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Starship prompt for zsh
eval "$(starship init zsh)"

# Vim mode
# bindkey -v

# # Enable zsh completion system
# autoload -Uz compinit
# compinit

# Micromamba root
export MAMBA_ROOT_PREFIX=/mnt/hdd/micromamba

# Add local bin to PATH
export PATH="$HOME/.local/bin:$PATH"
export PATH="$HOME/.cargo/bin:$PATH"

# Aliases
alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias x="poweroff"
alias hyprconf="nvim -n ~/.config/hypr/hyprland.conf"
alias waybarconf="nvim -n ~/.config/waybar/config"
alias waybarcss="nvim -n ~/.config/waybar/style.css"
alias mm="micromamba"
alias musictui="ncmpcpp"
alias nvimconf="nvim -n ~/.config/nvim/init.lua"
alias snvim="sudo -E nvim"
alias bedit="nvim ~/.zshrc && source ~/.zshrc"
alias projects="cd ~/Documents/projects"
alias starshipconf="nvim ~/.config/starship.toml"
alias songs="ncmpcpp"
alias kittyconf="nvim ~/.config/kitty/kitty.conf"
alias anyrunconf="nvim ~/.config/anyrun/config.ron"
alias anyruncss="nvim ~/.config/anyrun/style.css"
alias chrome="google-chrome-stable"
alias ppy="poetry run python"
alias pact='source $(poetry env info --path)/bin/activate'
alias deact='deactivate'
alias hyprlockconf="nvim ~/.config/hypr/hyprlock.conf"
alias neofetch="fastfetch"
alias asciiquarium="asciiquarium --transparent"
alias off="poweroff"
alias notas="cd ~/Documents/notas"
alias hyprpaperconf="nvim ~/.config/hypr/hyprpaper.conf"
alias crb="cargo run --bin"
alias ctb="cargo test --bin"
alias changebg="hyprctl hyprpaper reload"
alias clus="cd ~/Documents/projects/clusterium_server"
alias del="rm -rf"
alias jenny="cd ~/Documents/servers/jenny && ./run.sh"
alias darkf="cd ~/Documents/servers/'servers mc'/darkf && ./start.sh"
alias servers="cd ~/Documents/servers/'servers mc'"
alias bindir="cd ~/.local/bin"
alias appsdir="cd ~/.local/share/applications"

# Temporales
alias rustlings="cd ~/Documents/projects/rustlings"
alias todoapp="cd ~/Documents/projects/rs-exercises"
alias cbs="crb structs1"

