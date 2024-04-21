# dotfiles

This repository contains my personal dotfiles managed by [chezmoi](https://www.chezmoi.io/). This setup helps to ensure that the transition between different machines is seamless and consistent.

## What's Included?

These dotfiles automate the setup of a new machine with the necessary development tools and configurations. Here’s what the setup script will install:

### System Packages
- **build-essential**: Compilation tools like `gcc` and `make`.
- **procps**: Utilities that provide system information.
- **curl**: Command line tool and library for transferring data with URLs.
- **file**: Determines file type; used by numerous system scripts.
- **git**: Version control system.
- **bat**: A cat(1) clone with syntax highlighting and Git integration.
- **fd-find**: A simple, fast and user-friendly alternative to `find`.
- **fzf**: A general-purpose command-line fuzzy finder.
- **tree**: Displays directory tree, in color if you have `LS_COLORS` set.

### Software and Languages
- **Rust**: Programming language, along with the `eza` crate for enhanced utilities.
- **zoxide**: A smarter cd command that works across all platforms.
- **Homebrew**: The Missing Package Manager for macOS (or Linux).

### Homebrew Packages
- **ripgrep**: Extremely fast recursive search tool.
- **tlrc**: Short for "time-lapse remote control," a tool for managing time-lapse photography (example name, adjust according to actual usage).
- **chezmoi**: To manage your dotfiles across multiple machines.

## Installation

To apply the dotfiles to your system, follow these steps:

1. **Install Chezmoi:**
   ```sh
   sh -c "$(curl -fsLS https://chezmoi.io/get)"
   ```
2. **Initialize the Dotfiles Repository:**
    ```sh
    chezmoi init git@github.com:atbraz/dotfiles.git
    ```
3. **Run the Setup Script:**
    ```sh
    bash setup.sh
    ```