if status is-interactive
    # Commands to run in interactive sessions can go here
end

# Disable Fsih greeting
set -Ux fish_greeting

# Neovim as text editor
set -Ux EDITOR nvim

# Homebrew
eval (/home/linuxbrew/.linuxbrew/bin/brew shellenv)
test -d ~/.linuxbrew && eval "$(~/.linuxbrew/bin/brew shellenv)"
test -d /home/linuxbrew/.linuxbrew && eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"
test -r ~/.bash_profile && echo "eval \"\$($(brew --prefix)/bin/brew shellenv)\"" >> ~/.bash_profile
echo "eval \"\$($(brew --prefix)/bin/brew shellenv)\"" >> ~/.profile

# Intialize starship
starship init fish | source

# Initialize zoxide
zoxide init fish | source

# ~/.tmux/plugins
fish_add_path $HOME/.tmux/plugins/t-smart-tmux-session-manager/bin
# ~/.config/tmux/plugins

# Smart tmux session manager from joshmedeski
fish_add_path $HOME/.config/tmux/plugins/t-smart-tmux-session-manager/bin

xmodmap ~/.config/fish/scripts/.Xmodmap
