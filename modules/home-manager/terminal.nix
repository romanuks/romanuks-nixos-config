{ pkgs, config, ... }:

{
  programs.starship = {
    enable = true;
  };

  programs.kitty = {
    enable = true;
    
    settings = {
      font_family = ''family="Fira Code"'';
      cursor_shape = "beam";

    };
  };

  programs.zsh = {
    enable = true;
    enableCompletion = true;
    syntaxHighlighting.enable = true;

    initExtra = ''eval "$(starship init zsh)"'';
    oh-my-zsh = {
      enable = true;
      plugins = [ "git" ];
    };
  };
}
