{ pkgs, config, ... }:

{
  services.gnome-keyring.enable = true;

  programs = {
    btop.enable = true;
    vscode = {
      enable = true;
      package = pkgs.vscode.fhsWithPackages (
        ps: with ps; [
          nixfmt-rfc-style
          nixd
        ]
      );
    };
  };
  
  # qt = {
  #   enable = true;
  #   platformTheme.name = "gtk";
  # };
  # gtk = {
  #   enable = true;
  #   theme.name = "Adwaita-dark";
  #   gtk3.extraConfig = {
  #     Settings = ''
  #       gtk-application-prefer-dark-theme=1
  #     '';
  #   };
  #   gtk4.extraConfig = {
  #     Settings = ''
  #       gtk-application-prefer-dark-theme=1
  #     '';
  #   };
  # };
}
