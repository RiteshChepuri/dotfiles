if status is-interactive
    # Commands to run in interactive sessions can go here
end

# Disable fish greeting
set -Ux fish_greeting

# Set Neovim as default editor
set -Ux EDITOR nvim

# Initialize starship
starship init fish | source

# Initialize zoxide
zoxide init fish | source

fish_add_path -m ~/.config/local/bin
fish_add_path -m ~/go/bin/sesh
fish_add_path -m ~/.local/share/gem/ruby/3.0.0/bin
fish_add_path -m ~/.cargo/bin/
fish_add_path -m ~/.local/bin/

