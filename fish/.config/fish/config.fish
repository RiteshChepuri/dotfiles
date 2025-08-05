if status is-interactive
    # Commands to run in interactive sessions can go here
end

# Disable fish greeting
set -Ux fish_greeting

# Set Neovim as default editor
set -Ux EDITOR nvim

# Intialize starship prompt
starship init fish | source

# Intialize zoxide
zoxide init fish | source

# Add scripts to path
fish_add_path -g ~/.config/local/bin/
