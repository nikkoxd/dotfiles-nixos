{ inputs, ... }: {
  imports = [
    inputs.nixvim.homeManagerModules.nixvim
    ./awesome
    ./ghostty.nix
    ./gtk-4.0
    ./home.nix
    ./neovim
    ./picom.nix
  ];
}
