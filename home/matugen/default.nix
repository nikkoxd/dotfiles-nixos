{ ... }: {
  imports = [
    ./templates/zellij.nix
  ];

  xdg.configFile."matugen" = {
    source = ./.;
    recursive = true;
  };
}
