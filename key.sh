#!/usr/bin/env bash 

# Here is the folder where my keybindings are located. 
F=$HOME/Documents/projects/programs/scripts/.keybindings

# Here we define the configurations for the window 
WINDOW='yad --text-info --back=#2e3440 --fore=#d8dee9 --geometry=1200x800'

echo "What do you wanna see?"

echo "1. Neovim keybindings"
echo "2. Tmux keybindings"
echo "3. Terminal"
echo "4. Vim - Basics"
echo "5. Vim - Advanced"

read -p "> " choice # prompt string

if [[ $choice -eq 1 ]]; then 
  cat $F/nvim-kb.md | $WINDOW --fontname="mono 13"
elif [[ $choice -eq 2 ]]; then
  cat $F/tmux-kb.md | $WINDOW
elif [[ $choice -eq 3 ]]; then
  cat $F/terminal-kb.md | $WINDOW
elif [[ $choice -eq 4 ]]; then
  cat $F/vim-kb-I.md | $WINDOW
else
  cat $F/vim-kb-II.md | $WINDOW
fi 
