{ pkgs, ... }:

{
  fonts.packages = with pkgs; [
    noto-fonts
    nerd-fonts.fira-code
    nerd-fonts.droid-sans-mono
    nerd-fonts._0xproto
  ];

  environment.systemPackages = with pkgs; [ google-chrome ags ];

  environment.sessionVariables = { FLAKE = "/home/roman/nixos-config"; };
  programs.nh = {
    enable = true;
    clean.enable = true;
    clean.extraArgs = "--keep-since 4d --keep 3";
    flake = "/home/roman/nixos-config";
  };

  programs.zsh.enable = true;
  users.defaultUserShell = pkgs.zsh;
}
