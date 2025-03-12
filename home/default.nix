{ inputs, ... }: {
  imports = [
    inputs.nixvim.homeManagerModules.nixvim
    ./home.nix
    ./awesome
    ./ghostty
    ./gtk-4.0
    ./neovim
  ];
}
