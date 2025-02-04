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

bind \t accept-autosuggestion

# env paths
fish_add_path -m ~/.local/share/gem/ruby/3.2.0/bin
fish_add_path -m ~/.config/local/bin
fish_add_path -m /usr/local/go/bin
