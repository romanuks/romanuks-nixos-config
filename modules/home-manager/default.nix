{ pkgs, config, lib, ... }:

{
  services.gnome-keyring.enable = true;
  home.packages = [
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
	      color-scheme = lib.mkForce "prefer-dark";
      };
    };
  };

  gtk = {
    enable = true;
    gtk3.extraConfig.gtk-application-prefer-dark-theme = 1;
    gtk4.extraConfig.gtk-application-prefer-dark-theme = 1;
  };
}
