{ ... }: {
  programs.ghostty = {
    enable = true;

    settings = {
      theme = "tokyonight";
      font-family = "Iosevka Nerd Font";

      window-padding-x = 10;
      window-padding-y = 10;

      window-decoration = false;
      gtk-single-instance = true;
    };
  };
}
