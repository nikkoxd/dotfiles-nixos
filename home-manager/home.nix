{ config, pkgs, ... }:

{
  home.username = "nikko";
  home.homeDirectory = "/home/nikko";

  home.packages = with pkgs; [
    fastfetch
    yazi

    ripgrep
    jq
    eza
    fzf

    btop
  ];

  programs.git = {
    enable = true;
    userName = "nikkoxd";
    userEmail = "vladik.nekrasov3@gmail.com";
  };

  programs.bash = {
    enable = true;
    enableCompletion = true;
  };

  home.stateVersion = "25.05";

  programs.home-manager.enable = true;
}
