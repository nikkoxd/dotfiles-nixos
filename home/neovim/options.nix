{ ... }: {
  programs.nixvim = {
    enableMan = true;
    colorscheme = "rose-pine";
    opts = {
      number = true;
      relativenumber = true;
    };
  };
}
