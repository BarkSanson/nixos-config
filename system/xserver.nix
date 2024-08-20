{
    services.xserver = {
        enable = true;
        displayManager.gdm = {
            enable = true;
            wayland = true;
        };

        libinput.enable = true;
        layout = "es";
        xkbVariant = "";
    };
}
