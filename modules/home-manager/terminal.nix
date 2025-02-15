{ pkgs, config, ... }:

{
  programs.kitty = {
    enable = true;
  };

  programs.zsh = {
    enable = true;
    enableCompletion = true;
    #autosuggestions.enable = true;
    syntaxHighlighting.enable = true;
    #dotDir = ".config/zsh";
  };
}
