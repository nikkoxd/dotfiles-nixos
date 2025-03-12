{ pkgs, ... }: {
  home.username = "nikko";
  home.homeDirectory = "/home/nikko";

  home.packages = with pkgs; [
    lazygit
    ghostty
    fastfetch
    yazi
    ripgrep
    jq
    eza
    fzf
    btop
    tmux
  ];

  programs = {
    git = {
      enable = true;
      userName = "nikkoxd";
      userEmail = "vladik.nekrasov3@gmail.com";
    };

    bash = {
      enable = true;
      enableCompletion = true;
    };

    nixvim = {
      enable = true;
    };
  };

  home.stateVersion = "25.05";

  programs.home-manager.enable = true;
}
