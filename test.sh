cp home-manager/waybar/theme.css /home/$(whoami)/.config/waybar
cp home-manager/waybar/power_menu.xml /home/$(whoami)/.config/waybar

cp home-manager/wofi/style.css /home/$(whoami)/.config/wofi

sudo nixos-rebuild test --flake ./

