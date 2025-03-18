{ ... }: {
  xdg.configFile."awesome" = {
    source = ./.;
    recursive = true;
  };
}
