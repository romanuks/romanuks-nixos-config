{ pkgs, ... }:

{
  nixpkgs.config = {
    allowUnfree = true;
    allowUnfreePredicate = (_: true);
  };

  programs = {
    btop.enable = true;

    vscode = {
      enable = true;
      package =
        pkgs.vscode.fhsWithPackages (ps: with ps; [ nixfmt-rfc-style nixd ]);
    };
  };
}
