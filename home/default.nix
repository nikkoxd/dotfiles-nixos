{ inputs, ... }: {
  imports = [
    inputs.nixvim.homeManagerModules.nixvim
    ./awesome
    ./bash.nix
    ./ghostty.nix
    ./git.nix
    ./gtk-4.0
    ./home.nix
    ./neovim
    ./picom.nix
    ./zellij.nix
  ];
}
