{ pkgs, lib, inputs, ... }:

{
  wayland.windowManager.hyprland = {
    enable = true;
    package = null;
    portalPackage = null;

    settings = {
      
      exec-once = [
        "bash ~/.config/hypr/start.sh" 
      ];

      "$mod" = "SUPER";
      
      xwayland.force_zero_scaling = true;

      general = {
        gaps_in = 6;
	gaps_out = 6;
	border_size = 2;
	layout = "dwindle";
      };

      monitor = [
        ", 3440x1440@144, auto, 1.25"
      ];

      input = {
        accel_profile = "flat";
      };

      bind = [
        "$mod, B, exec, chromium"
        "$mod, Q, exec, kitty"
      ];

      bindm = [
        "$mod, mouse:272, movewindow"
        "$mod, mouse:273, resizewindow"
      ];
    };
  };

  # Hint Electron apps to use Wayland
  home.sessionVariables.NIXOS_OZONE_WL = "1";

  programs.waybar.enable = true;
  services.dunst.enable = true;
}
