#
# ~/.bashrc
#

# If not running interactively, don't do anything
eval "$(starship init bash)"
[[ $- != *i* ]] && return

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
alias bedit="nvim -n ~/.bashrc"
alias bsource="source ~/.bashrc"
alias footconf="nvim -n ~/.config/foot/foot.ini"
alias projects="cd ~/Documents/projects"
alias starshipconf="nvim -n ~/.config/starship.toml"
alias woficonf="nvim -n ~/.config/wofi/config"
alias woficss="nvim -n ~/.config/wofi/style.css"
alias anyrunconf="nvim -n ~/.config/anyrun/config.ron"
alias anyruncss="nvim -n ~/.config/anyrun/style.css"
alias hyprlockconf="nvim -n ~/.config/hypr/hyprlock.conf"
alias off="poweroff"
alias cpustats="auto-cpufreq --stats"
alias pact='source $(poetry env info --path)/bin/activate'
alias deact="deactivate"
alias songs="ncmpcpp"
alias ppy="poetry run python"
alias jenny="cd /home/gero/Documents/servers/jenny/ && ./run.sh"
alias neofetch="fastfetch --logo-padding-top 7"
