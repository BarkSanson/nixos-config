if [ ! -d "$HOME/.config/waybar" ]; then
    mkdir "$HOME/.config/waybar"
fi

cp home-manager/waybar/theme.css $HOME/.config/waybar
cp home-manager/waybar/power_menu.xml $HOME/.config/waybar

if [ ! -d "$HOME/.config/wofi" ]; then
    mkdir "$HOME/.config/wofi"
fi
cp home-manager/wofi/style.css $HOME/.config/wofi

sudo nixos-rebuild switch --flake ./
