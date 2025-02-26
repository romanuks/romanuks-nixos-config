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

  # stylix = {
  #   base16Scheme = "${pkgs.base16-schemes}/share/themes/3024.yaml";
  #   image = null;
  # };
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
