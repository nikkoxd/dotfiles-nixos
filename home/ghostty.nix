{ ... }: {
  programs.ghostty = {
    enable = true;

    settings = {
      theme = "tokyonight";
      window-decoration = false;
      gtk-single-instance = true;
    };
  };
}
