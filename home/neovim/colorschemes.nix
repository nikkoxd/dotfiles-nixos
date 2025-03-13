{ ... }: {
  programs.nixvim = {
    colorscheme = "tokyonight";
    colorschemes.tokyonight = {
      enable = true;
      settings = {
        style = "night";
      };
    };
  };
}
