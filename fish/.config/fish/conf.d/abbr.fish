# Essential
abbr dc "cd .."
abbr cls clear
abbr rmf "rm -rf"
abbr ch "chmod +x"
abbr cf "chmod +x (ls | gum filter --limit 1 --header 'chmod +x')"
abbr cx "chmod 644"

# Neovim
abbr v nvim
abbr v. "nvim +GoToFile"
abbr :GoToFile "nvim +GoToFile"

# TMUX
abbr ta "tmux a"
abbr tk "tmux kill-server"
abbr td "tmux detach"

# Git
abbr gs "git status"
abbr gd "git diff"
abbr gl "git log --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit"
abbr gcl "git clone"

# Battery health check
abbr battery "upower -i /org/freedesktop/UPower/devices/battery_BAT0"
