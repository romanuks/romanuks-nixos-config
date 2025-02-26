{ config, pkgs, ... }:

{
  imports = [
    ../../modules/home-manager/terminal.nix
    ../../modules/home-manager/git.nix
    ../../modules/home-manager/nvim.nix
    ../../modules/home-manager/hyprland.nix
    ../../modules/home-manager
  ];

  nixpkgs.config = {
    allowUnfree = true;
    allowUnfreePredicate = (_: true);
  };

  # Home Manager needs a bit of information about you and the paths it should
  # manage.
  home.username = "roman";
  home.homeDirectory = "/home/roman";

  # Do not change.
  home.stateVersion = "24.11"; # Please read the comment before changing.

  home.packages = [ ];

  home.file = { };

  home.sessionVariables = {
    EDITOR = "nvim";
  };

  # Let Home Manager install and manage itself.
  programs.home-manager.enable = true;
}
