#/bin/bash

set -e

echo "Updating and upgrading the system..."
sudo apt update && sudo apt upgrade -y

echo "Installing necessary packages..."
sudo apt install -y \
    build-essential \
    procps \
    curl \
    file \
    git \
    bat \
    fd-find \
    fzf \
    tree \
    atuin


echo "Installing Rust..."
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh  -s -- -y
source $HOME/.cargo/env

echo "Installing Rust packages..."
cargo install \
    eza

echo "Installing zoxide..."
curl -sS https://raw.githubusercontent.com/ajeetdsouza/zoxide/main/install.sh | bash

echo "Installing brew..."
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
if [ -d "$HOME/.linuxbrew" ] || [ -d "/home/linuxbrew/.linuxbrew" ]; then
    eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"
    echo 'eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"' >> ~/.bashrc
fi

echo "Installation complete! Please restart your terminal or source ~/.bashrc"