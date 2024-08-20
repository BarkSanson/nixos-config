{
    programs.wofi = {
        enable = true;
        style = (builtins.readFile ./style.css);
        settings = {
            prompt = "";
            hide_scroll = true;
            allow_images = true;
            allow_markup = true;
            lines = 8;
        };
    };
}
