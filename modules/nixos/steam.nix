{ pkgs, lib, ... }:

{
  environment.systemPackages = with pkgs; [ mangohud ];

  programs = {
    gamescope = {
      enable = true;
      capSysNice = true;
    };

    steam = {
      enable = true;
      remotePlay.openFirewall = true;
      dedicatedServer.openFirewall = true;
      localNetworkGameTransfers.openFirewall = true;
    };
  };

  services.getty.autologinUser = "roman";
}
