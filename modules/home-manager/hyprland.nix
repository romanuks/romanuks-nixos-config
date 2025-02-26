{
  ...
}:

{
  wayland.windowManager.hyprland = {
    enable = true;
    package = null;
    portalPackage = null;

    settings = {
      "$mod" = "SUPER";

      exec-once = [ 
        "swww init"
        "nm-applet --indicator"
        "systemctl --user start hyprpolkitagent"
        ];

      xwayland.force_zero_scaling = true;

      misc = {
        vrr = 2;
      };

      general = {
        gaps_in = 6;
        gaps_out = 6;
        border_size = 2;
        layout = "dwindle";
      };

      monitor = [ ", 3440x1440@144, auto, 1" ];

      input = {
        accel_profile = "flat";
        scroll_factor = 1.0;
      };

      bind = [
        "$mod, v, togglefloating"
        "$mod, b, exec, google-chrome-stable --force-dark-mode"
        "$mod, q, exec, kitty"
        "$mod, c, exec, code"
        "$mod, SPACE, exec, fuzzel"
      ];

      bindm = [
        "$mod, mouse:272, movewindow"
        "$mod, mouse:273, resizewindow"
      ];
    };
  };

  # Hint Electron apps to use Wayland
  home.sessionVariables.NIXOS_OZONE_WL = "1";

  programs = {
    fuzzel.enable = true;
  };

  services = {
    # Clipboard
    cliphist.enable = true;

    # Notifications
    # dunst.enable = true;
  };
}
