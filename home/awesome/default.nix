{ ... }: {
  imports = [
    ./colorscheme.nix
  ];

  xdg.configFile."awesome" = {
    source = ./.;
    recursive = true;
  };
}
