#!/bin/bash

# Starship prompt for zsh
# eval "$(starship init zsh)"


if ! pgrep -u "$USER" ssh-agent > /dev/null; then
  eval "$(ssh-agent -s)"
fi 

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
export DATABASE_URL="postgres://postgres:mysecretpassword@localhost:5432/postgres"

mkcd() { 
    mkdir $1 && cd $1 
}

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
alias bedit="nvim ~/.bashrc && source ~/.bashrc"
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
alias neofetch="fastfetch -l windows"
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
alias tec="cd ~/Documents/tec"
alias ccheck="cargo check"
alias tree="tree -I target -I node_modules"
alias home="cd ~"
alias nvimcolors="cd ~/.config/nvim/lua/colors"
alias wlogoutdir="cd ~/.config/wlogout"
alias footconf="nvim ~/.config/foot/foot.ini"
alias tmpa="nvim ~/.bashrc.d/tmp_aliases.sh && source ~/.bashrc"
alias niriconf="nvim ~/.config/niri/config.kdl"

if [ -d "$HOME/.bashrc.d" ]; then
    for file in "$HOME"/.bashrc.d/*.sh; do
        [ -r "$file" ] && source "$file"
    done
fi

# export PATH="/usr/local/bin:$PATH"
# export PATH="/usr/local/bin:$PATH"
# export GI_TYPELIB_PATH="/usr/local/lib/girepository-1.0:/usr/lib/girepository-1.0"
