#
# ~/.bashrc

[[ $- != *i* ]] && return
eval "$(starship init bash)"
export MAMBA_ROOT_PREFIX=/mnt/hdd/micromamba
export PATH="$HOME/.local/bin:$PATH"
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
alias neofetch="fastfetch"
alias asciiquarium="asciiquarium --transparent"
