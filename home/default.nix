{ inputs, ... }: {
  imports = [
    inputs.nixvim.homeManagerModules.nixvim
    ./awesome
    ./bash.nix
    ./ghostty.nix
    ./git.nix
    ./gtk.nix
    ./home.nix
    ./matugen
    ./neovim
    ./picom.nix
    ./tmux.nix
  ];
}
