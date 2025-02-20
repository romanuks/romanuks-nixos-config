{ pkgs, lib, inputs, ... }:

{
  wayland.windowManager.hyprland = {
    enable = true;
    package = null;
    portalPackage = null;

    settings = {
      "$mod" = "SUPER";

      exec-once = [ "bash ~/.config/hypr/start.sh" ];

      xwayland.force_zero_scaling = true;

      misc = { vrr = 2; };

      general = {
        gaps_in = 6;
        gaps_out = 6;
        border_size = 2;
        layout = "dwindle";
      };

      monitor = [ ", 3440x1440@144, auto, 1.25" ];

      input = { accel_profile = "flat"; };

      bind = [
        "$mod, v, togglefloating"
        "$mod, b, exec, google-chrome-stable"
        "$mod, q, exec, kitty"
      ];

      bindm = [ "$mod, mouse:272, movewindow" "$mod, mouse:273, resizewindow" ];
    };
  };

  # Hint Electron apps to use Wayland
  home.sessionVariables.NIXOS_OZONE_WL = "1";

  home.packages = [ pkgs.hyprpanel ];
  imports = [ inputs.hyprpanel.homeManagerModules.hyprpanel ];
  programs.hyprpanel = {
    enable = true;
    overlay.enable = true;
    hyprland.enable = true;
    overwrite.enable = true;
    theme = "gruvbox_split";
  };

  # programs = {
  #   fuzzel.enable = true;

  #   waybar = {
  #     enable = true;
  #     settings = {
  #       mainBar = {
  #         layer = "top";
  #         position = "top";
  #         modules-left = [ "sway/mode" "wlr/taskbar" ];
  #         modules-center = [ "custom/hello-from-waybar" ];
  #         modules-right = [ "mpd" "temperature" "tray" ];
  #         tray = {
  #           spacing = 10;
  #         };
  #       };
  #     };
  #   }; 
  # };

  services = {
    # Clipboard
    cliphist.enable = true;

    # Notifications
    # dunst.enable = true;
  };
}
