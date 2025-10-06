#!/bin/bash

## Define all the colors
COL_USER_HOST='\[\e[35m\]' # The color of 'user@host.ext'
COL_CURSOR='\[\e[35m\]' # The color of the trailing cursor arrow
COL_CURRENT_PATH='\[\e[37m\]' # The color of the current directory full path
COL_GIT_STATUS_CLEAN='\[\e[93m\]' # Color of fresh git branch name, with NO changes
COL_GIT_STATUS_CHANGES='\[\e[92m\]' # Color of git branch, affter its diverged from remote

## Text Styles RESET='\[\e[0m\]' # What color will comand outputs be in
BOLD='\[\e[1m\]' # BOLD

## Config
SHOW_GIT=true

## If this is a valid git repo, echo the current branch name
parse_git_branch() {
     git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

## Echos what color the git branch should be (depending on changes)
parse_git_changes() {
  if [[ $(git status --porcelain) ]]; then
    echo ${COL_GIT_STATUS_CLEAN}
  else
    echo ${COL_GIT_STATUS_CHANGES}
  fi
}

## Build-up what will be the final PS1 string
set_bash_prompt(){
  PS1="${RESET}"
  PS1+="${BOLD}${COL_USER_HOST}\u @ \h ${RESET}${COL_CURRENT_PATH}\w "

  if [ "$SHOW_GIT" = true ] && [ "$(git rev-parse --is-inside-work-tree 2> /dev/null)" = true ] ; then
    PS1+="$(parse_git_changes)"
    PS1+="$(parse_git_branch)"
  fi

  PS1+="\n${COL_CURSOR}└─▶ "
  PS1+="${RESET}"
}

## Done, now just set the PS1 prompt :)
PROMPT_COMMAND=set_bash_prompt
#!/bin/bash

## Define all the colors
COL_USER_HOST='\[\e[35m\]' # The color of 'user@host.ext'
COL_CURSOR='\[\e[35m\]' # The color of the trailing cursor arrow
COL_CURRENT_PATH='\[\e[37m\]' # The color of the current directory full path
COL_GIT_STATUS_CLEAN='\[\e[93m\]' # Color of fresh git branch name, with NO changes
COL_GIT_STATUS_CHANGES='\[\e[92m\]' # Color of git branch, affter its diverged from remote

## Text Styles
RESET='\[\e[0m\]' # What color will comand outputs be in
BOLD='\[\e[1m\]' # BOLD

## Config
SHOW_GIT=true

## If this is a valid git repo, echo the current branch name
parse_git_branch() {
     git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

## Echos what color the git branch should be (depending on changes)
parse_git_changes() {
  if [[ $(git status --porcelain) ]]; then
    echo ${COL_GIT_STATUS_CLEAN}
  else
    echo ${COL_GIT_STATUS_CHANGES}
  fi
}

## Build-up what will be the final PS1 string
set_bash_prompt(){
  PS1="${RESET}"
  PS1+="${BOLD}${COL_USER_HOST}\u @ \h ${RESET}${COL_CURRENT_PATH}\w "

  if [ "$SHOW_GIT" = true ] && [ "$(git rev-parse --is-inside-work-tree 2> /dev/null)" = true ] ; then
    PS1+="$(parse_git_changes)"
    PS1+="$(parse_git_branch)"
  fi

  PS1+="\n${COL_CURSOR}└─▶ "
  PS1+="${RESET}"
}

## Done, now just set the PS1 prompt :)
PROMPT_COMMAND=set_bash_prompt
[[ $- != *i* ]] && return

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
