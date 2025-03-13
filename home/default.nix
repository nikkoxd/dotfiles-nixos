{ inputs, ... }: {
  imports = [
    inputs.nixvim.homeManagerModules.nixvim
    ./home.nix
    ./awesome
    ./ghostty.nix
    ./gtk-4.0
    ./neovim
  ];
}
