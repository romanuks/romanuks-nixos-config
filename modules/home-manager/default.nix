{
  pkgs,
  config,
  inputs,
  lib,
  ...
}:

{
  services.gnome-keyring.enable = true;
  home.packages = [
    pkgs.waybar-mpris
    pkgs.youtube-music
  ];

  programs.btop.enable = true;
  programs.vscode = {
    enable = true;
    package = pkgs.vscode.fhsWithPackages (
      ps: with ps; [
        nixfmt-rfc-style
        nixd
      ]
    );
  };

  dconf = {
    settings = {
      "org/gnome/desktop/interface" = {
        # Fixes stystem dark mode for websites
        color-scheme = lib.mkForce "prefer-dark";
      };
    };
  };

  gtk = {
    enable = true;
    gtk3.extraConfig.gtk-application-prefer-dark-theme = 1;
    gtk4.extraConfig.gtk-application-prefer-dark-theme = 1;
  };

  programs.waybar = {
    enable = true;
    settings = {
      mainBar = {
        modules-left = [];
        modules-center = [ "mpris" ];
        modules-right = [ "clock" ];
      };
    };
  };
}
