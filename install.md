Make sure you have git installed
```
mkdir ~/repos && git clone https://aur.archlinux.org/yay.git ~/repos/yay
cd ~/repos/yay
makepkg -si
yay -Syu
```

```
yay -S starship waybar rofi fish zoxode lsd fd ripgrep bat lf fzf lazygit tmux luarocks ruby nodejs npm git-delta deno blueman xclip julia discord dunst rust composer php python-pip python-pynvim mercurial swaylock github-cli brillo pamixer ttf-hack-nerd google-chrome tofi wezterm brave-bin btop nemo pavucontrol

```

```
chsh -s /usr/bin/fish
```

reboot the system

Enable Bluetooth service
```
sudo systemctl start bluetooth.service
sudo systemctl enable --now bluetooth.service
```

and run `scripts/clone` script with repos.list

```
cd ~/.config/scripts
./clone ~/.config/repos.list

```
