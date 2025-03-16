{ pkgs, nix-colors, ... }: {
  imports = [ nix-colors.homeManagerModules.default ];

  colorScheme = nix-colors.colorSchemes.framer;

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

  programs.home-manager.enable = true;
}
