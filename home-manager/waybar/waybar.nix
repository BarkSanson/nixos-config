{
    programs.waybar = {
        enable = true;
        
        settings = {
            mainBar = {
                layer = "top";
                position = "top";
                height = 40;
                spacing = 8;
                margin = "10";

                modules-left = [
                    "custom/menu"
                    "hyprland/workspaces"
                ];
                modules-center = [
                    "clock"
                ];
                modules-right = [
                    "group/system-info"
                    "pulseaudio"
                    "battery"
                    "group/power"
                ];

                "custom/menu" = {
                    format = "{icon}";
                    format-icons = "";
                    on-click = "wofi --show drun";
                };

                "hyprland/workspaces" = {
                    format = "{icon}";
                    format-icons = {
                        "1" = "";
                        "2" = "";
                        "3" = "";
                        "4" = "";
                        "5" = "";
                        "6" = "";
                    };
                    persistent-workspaces = {
                        "*" = [1 2 3 4 5 6];
                    };
                };

                clock = {
                    format = " {:%A, %d-%m-%Y, %R}";
                    tooltip-format = "<big>{:%Y %B}</big>\n<tt><small>{calendar}</small></tt>";
                };

                "group/system-info" = {
                    orientation = "inherit";
                    modules = [
                        "cpu"
                        "memory"
                        "network"
                        "bluetooth"
                    ];
                };

                cpu = {
                    format = "{usage}% ";
                    tooltip = false;
                };

                memory = {
                    format = "{}% ";
                };

                network = {
                    format-wifi = "";
                    format-ethernet = "󰈁";
                    tooltip-format = "{ifname} via {gwaddr}";
                    format-disconnected = "󰈂";
                };

                bluetooth = {
                    format-on = "";
                    format-off = "󰂲";
                    format-connected = "󰂰 {num_connections}";
                };

                tray = {
                    icon-size = 18;
                    spacing = 5;
                };

                pulseaudio = {
                    format = "{volume}% {icon}";
                    format-bluetooth = "{volume}% 󰥰 ";
                    format-muted = "󰝟 ";
                    format-icons = {
                        default = ["" "" ""];
                    };
                    on-click = "pavucontrol";
                };

                battery = {
                    states = {
                        good = 75;
                        warning = 30;
                        critical = 15;
                    };
                    format = "{capacity}% {icon}";
                    format-full = "{capacity}% {icon}";
                    format-charging = "{capacity}% ";
                    format-alt = "{time} {icon}";
                    format-icons = ["" "" "" "" ""];
                };

                "group/power" = {
                    orientation = "inherit";
                    drawer = {
                      transition-duration = 500;
                      children-class = "not-power";
                      transition-left-to-right = false;
                    };
                    modules = [
                      "custom/power"
                      "custom/quit"
                      "custom/lock"
                      "custom/reboot"
                    ];
                };

                "custom/quit" = {
                  "format" = "󰗼";
                  "tooltip" = false;
                  "on-click" = "hyprctl dispatch exit";
                };

                "custom/lock" = {
                  "format" = "󰍁";
                  "tooltip" = false;
                  "on-click" = "swaylock";
                };

                "custom/reboot" = {
                  "format" = "󰜉";
                  "tooltip" = false;
                  "on-click" = "reboot";
                };

                "custom/power" = {
                  "format" = "";
                  "tooltip" = false;
                  "on-click" = "shutdown now";
                };
            };
        };

        style = (builtins.readFile ./style.css);
    };
}
