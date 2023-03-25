#!/bin/bash

# Download and install Neovim
wget https://github.com/neovim/neovim/releases/download/v0.8.0/nvim-linux64.deb
dpkg -i nvim-linux64.deb

# Install required dependencies
apt install -y npm nodejs python3-pip ripgrep git

# Clone the NvChad repository
git clone https://github.com/NvChad/NvChad ~/.config/nvim --depth 1


# Copy the contents of this directory to custom directory
mv /nvcdot/nvchad ~/.config/nvim/lua/custom/

# Check if the copy was successful
if [ $? -eq 0 ]; then
    echo "nvchad directory copied to custom directory successfully."
else
    echo "Error: Failed to copy nvchad directory."
fi
