cp home-manager/waybar/theme.css /home/$(whoami)/.config/waybar
cp home-manager/waybar/power_menu.xml /home/$(whoami)/.config/waybar

sudo nixos-rebuild test --flake ./
