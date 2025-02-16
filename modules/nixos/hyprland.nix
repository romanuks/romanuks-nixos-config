{ pkgs, lib, config, ... }:

{
  programs.hyprland = {
    enable = true;
    xwayland.enable = true;
  };

  environment.systemPackages = with pkgs; [
    networkmanagerapplet

    # Wallpapers
    swww

    # App Launcher
    rofi-wayland
  ];

  xdg.portal = {
    enable = true;
    extraPortals = [ pkgs.xdg-desktop-portal-gtk ];
  };

  security.rtkit.enable = true;
  services.pipewire = {
    enable = true;
    alsa.enable = true;
    alsa.support32Bit = true;
    pulse.enable = true;
    jack.enable = true;
  };
}
