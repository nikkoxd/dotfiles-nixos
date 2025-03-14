{ pkgs, nix-colors, ... }: {
  imports = [ nix-colors.homeManagerModules.default ];

  colorScheme = nix-colors.colorSchemes.tokyo-night-dark;

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
      kdePackages.dolphin
      lazygit
      nitrogen
      ripgrep
      stylua
      yazi
      zellij
      zjstatus
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
