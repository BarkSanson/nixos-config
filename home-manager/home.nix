{ pkgs, ... }:

{
    imports = [
        ./hyprland.nix
        ./zsh.nix
        ./kitty.nix 
        ./waybar/waybar.nix
        ./wofi/wofi.nix
        ./git.nix
        ./neovim.nix
    ];

    home = {
        username = "bark";
        homeDirectory = "/home/bark";
        stateVersion = "24.05";
    };

    home.packages = with pkgs; [
        xfce.thunar
        thunderbird
    ];

    programs.home-manager.enable = true;

    # Some programs and services that I'm not
    # currently interested in fully configuring
    # are placed here. If by any chance I end
    # up wanting to configure them, they will be moved
    # to an external file.
    programs.btop.enable = true;
    programs.firefox.enable = true;
    programs.vscode.enable = true;
    programs.spotify-player.enable = true;
}
