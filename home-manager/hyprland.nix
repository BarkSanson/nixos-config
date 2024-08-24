{
    services.hyprpaper = {
        enable = true;

        settings = {
            preload = [
                "~/Pictures/Wallpapers/1.jpg"
            ];

            wallpaper = [
                "eDP-1,~/Pictures/Wallpapers/1.jpg"
                "HDMI-A-1,~/Pictures/Wallpapers/1.jpg"
            ];
        };
    };

    wayland.windowManager.hyprland = {
        enable = true;
        xwayland.enable = true;

        settings = {
            "$mod" = "SUPER";
            "$terminal" = "kitty";
            "$menu" = "wofi --show drun";
            "$fileManager" = "thunar";

            exec-once = "waybar & hyprpaper";

            general = {
                gaps_in = 5;
                gaps_out = 10;
                
                border_size = 2;

                "col.active_border" = "rgba(f4dfbaff) rgba(eec373ff) 45deg";
                "col.inactive_border" = "rgba(876445ff)";

                resize_on_border = false;

                allow_tearing = false;

                layout = "master";
            };

            input = {
                kb_layout = "es";

                follow_mouse = 1;

                touchpad = {
                    natural_scroll = true;
                };
            };

            decoration = {
                rounding = 10;

                active_opacity = 1.0;
                inactive_opacity = 0.8;

                drop_shadow = true;
                shadow_range = 4;
                shadow_render_power = 3;
                "col.shadow" = "rgba(1a1a1aee)";

                blur = {
                    enabled = true;
                    size = 10;
                    passes = 3;
                    vibrancy = 0.1696;
                };
            };

            animations = {
                enabled = true;

                bezier = "myBezier, 0.05, 0.9, 0.1, 1.05";

                animation = [
                    "windows, 1, 7, myBezier"
                    "windowsOut, 1, 7, default, popin 80%"
                    "border, 1, 10, default"
                    "borderangle, 1, 8, default"
                    "fade, 1, 7, default"
                    "workspaces, 1, 6, default"
                ];
            };

            dwindle = {
                pseudotile = true;
                preserve_split = true;
            };

            master = {
                new_status = "slave";
            };

            misc = {
                disable_hyprland_logo = true;
            };

            windowrule = [
                "workspace 1, ^(firefox)$"
                "workspace 2, ^(kitty)$"
                "workspace 4, ^(spotify)$"
                "workspace 5, ^(thunar)$"
                "workspace 6, ^(thunderbird)$"
            ];

            windowrulev2 = [
                "suppressevent maximize, class:.*"
                "workspace 4, initialTitle:(Spotify Premium)"
            ];

            bind = [
                "$mod, RETURN, exec, $terminal"
                "$mod, R, exec, $menu"
                "$mod, M, exec, $fileManager"
                "$mod, C, killactive"
                "$mod, V, togglefloating"
                "$mod, F, fullscreen, 1"

                "$mod, h, movefocus, l"
                "$mod, l, movefocus, r"
                "$mod, k, movefocus, u"
                "$mod, j, movefocus, d"

                "$mod SHIFT, s, swapactiveworkspaces, 0 1"
            ] ++ (
                builtins.concatLists (builtins.genList (
                    x: let
                        ws = let
                            c = (x + 1) / 7;
                        in
                            builtins.toString (x + 1 - (c * 7));
                    in [
                        "$mod, ${ws}, workspace, ${toString (x + 1)}"
                        "$mod SHIFT, ${ws}, movetoworkspace, ${toString (x + 1)}"
                    ]
                )
                7)
            );

            bindm = [
                "$mod, mouse:272, moveWindow"
                "$mod, mouse:273, resizeWindow"
            ];
        };
    };
}
