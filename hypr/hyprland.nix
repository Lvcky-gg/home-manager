{pkgs, ...}:
{
      programs.kitty.enable = true;
      wayland.windowManager.hyprland={

 	enable = true;
	package = null;
	portalPackage = null;
};
}
