{ inputs, ... }: {
  imports = [
    inputs.nixvim.homeManagerModules.nixvim
    ./awesome
    ./bash.nix
    ./ghostty.nix
    ./git.nix
    ./gtk-4.0
    ./home.nix
    ./matugen
    ./neovim
    ./picom.nix
    ./tmux.nix
  ];
}
