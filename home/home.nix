{ pkgs, ... }: {
  home = {
    stateVersion = "25.05";

    username = "nikko";
    homeDirectory = "/home/nikko";

    packages = with pkgs; [
      bat
        btop
        eza
        fastfetch
        fzf
        gh
        ghostty
        jq
        lazygit
        nitrogen
        ripgrep
        stylua
        tmux
        yazi
    ];
  };

  programs = {
    home-manager.enable = true;

    git = {
      enable = true;
      userName = "nikkoxd";
      userEmail = "vladik.nekrasov3@gmail.com";
    };

    bash = {
      enable = true;
      enableCompletion = true;
    };

    nixvim.enable = true;
  };
}
