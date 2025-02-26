{ pkgs, ... }:

{
  security.polkit.enable = true;

  fonts.packages = with pkgs; [
    noto-fonts
    nerd-fonts.fira-code
    nerd-fonts.droid-sans-mono
    nerd-fonts._0xproto
  ];

  environment.systemPackages = with pkgs; [
    nh
    helvum
    pavucontrol
    google-chrome
  ];

  environment.sessionVariables = {
    FLAKE = "/home/roman/nixos-config";
    ADW_DISABLE_PORTAL = "1";
  };

  programs.nh = {
    enable = true;
    clean.enable = true;
    clean.extraArgs = "--keep-since 4d --keep 3";
    flake = "/home/roman/nixos-config";
  };

  programs.zsh.enable = true;

  users.defaultUserShell = pkgs.zsh;

  programs.seahorse.enable = true;

  services.gnome.gnome-keyring.enable = true;

  stylix = {
    image = ./wp.jpg;
    base16Scheme = "${pkgs.base16-schemes}/share/themes/catppuccin-mocha.yaml";
    enable = true;
    autoEnable = true;
    polarity = "dark";
    opacity.terminal = 0.8;
    cursor = {
      package = pkgs.bibata-cursors;
      name = "Bibata-Modern-Ice";
      size = 14;
    };
    fonts = {
      monospace = {
        package = pkgs.nerd-fonts.jetbrains-mono;
        name = "JetBrains Mono";
      };
      sansSerif = {
        package = pkgs.montserrat;
        name = "Montserrat";
      };
      serif = {
        package = pkgs.montserrat;
        name = "Montserrat";
      };
      sizes = {
        applications = 12;
        terminal = 15;
        desktop = 11;
        popups = 12;
      };
    };
  };
}
