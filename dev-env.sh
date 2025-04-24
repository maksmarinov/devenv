#!/bin/bash

sudo apt-get install software-properties-common
sudo apt-get install python-dev python-pip python3-dev python3-pip
sudo apt-get install -y git curl wget fuse build-essential gh
sudo apt-get install -y tmux
sudo add-apt-repository universe
sudo add-apt-repository ppa:neovim-ppa/unstable -y
sudo apt update
sudo apt install -y make gcc ripgrep unzip git xclip neovim
sudo apt upgrade

/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/mkasberg/ghostty-ubuntu/HEAD/install.sh)"

sudo apt install -y ./ghostty_*.deb
sudo apt install -y fzf 
# Download and install nvm:
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.40.2/install.sh | bash
git clone https://github.com/nvim-lua/kickstart.nvim.git "${XDG_CONFIG_HOME:-$HOME/.config}"/nvim

# in lieu of restarting the shell
\. "$HOME/.nvm/nvm.sh"

# Download and install Node.js:
nvm install 22

# Verify the Node.js version:
node -v # 
nvm current 

# Verify npm version:
npm -v 
sudo apt install fonts-firacode
echo "set -g default-terminal "tmux-256color"
set -s escape-time 0
set -g base-index 1
unbind C-b
set-option -g prefix C-a
bind-key C-a send-prefix
bind -r h select-pane -L
bind -r j select-pane -D
bind -r k select-pane -U
bind -r l select-pane -R
">~/.tmux.conf
echo "tmux conf created."

echo "theme = IR_Black
background-opacity = 0.9
background-blur = 20
maximize = true
window-theme = ghostty
window-decoration = none
font-family= Fira Code
font-size = 16">~/.config/ghostty/config

echo "ghostty conf created."

tmux source-file ~/.tmux.conf
sudo apt update
