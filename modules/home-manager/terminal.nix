{ ... }:

{
  programs.starship.enable = true;

  programs.kitty.enable = true;

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
