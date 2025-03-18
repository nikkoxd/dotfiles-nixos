{ inputs, pkgs, ... }: {
  home = {
    stateVersion = "25.05";

    username = "nikko";
    homeDirectory = "/home/nikko";

    packages = with pkgs; [
      bat
      btop
      eza
      fastfetch
      feh
      fzf
      gh
      ghostty
      inputs.matugen.packages.${system}.default
      jq
      kdePackages.dolphin
      lazygit
      ripgrep
      stylua
      yazi
      zellij
      zjstatus
    ];
  };

  programs.home-manager.enable = true;
}
