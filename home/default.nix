{ inputs, ... }: {
  imports = [
    inputs.nixvim.homeManagerModules.nixvim
    ./home.nix
    ./awesome
    ./ghostty
    ./neovim
  ];
}
