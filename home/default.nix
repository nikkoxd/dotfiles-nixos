{ inputs, ... }: {
  imports = [
    inputs.nixvim.homeManagerModules.nixvim
    ./home.nix
    ./awesome
    ./neovim
  ];
}
