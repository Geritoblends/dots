#!/bin/bash

if ! pgrep -u "$USER" ssh-agent > /dev/null; then
  eval "$(ssh-agent -s)"
fi 

# Vim mode
# bindkey -v

# # Enable zsh completion system
# autoload -Uz compinit
# compinit

# Micromamba root

# Add local bin to PATH
if [ -d "$HOME/.bashrc.d" ]; then
    for file in "$HOME"/.bashrc.d/*.sh; do
        [ -r "$file" ] && source "$file"
    done
fi

