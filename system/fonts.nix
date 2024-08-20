{ pkgs, ...}:

{
    fonts.packages = with pkgs; [
        fira-code
        fira-code-symbols
        font-awesome
        (nerdfonts.override { fonts = [ "FiraCode" ]; })
    ];
}
