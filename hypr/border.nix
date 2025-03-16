{pkgs, ...}:
{
    wayland.windowManager.hyprland.settings.general = {
          layout = "dwindle";
        gaps_in = 6;
        gaps_out = 12;
        border_size = 2;
        "col.active_border" = "rgb(98971A) rgb(CC241D) 45deg";
        "col.inactive_border" = "0x00000000";
        no_border_on_floating = false;
    };
}