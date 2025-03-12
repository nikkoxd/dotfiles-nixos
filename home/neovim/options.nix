{ ... }: {
  programs.nixvim = {
    enableMan = true;
    colorscheme = "rose-pine";
    opts = {
      # Line numbers
      number = true;
      relativenumber = true;

      # Mouse control
      mouse = "a";
      mousemodel = "extend";

      # Splits
      splitbelow = true;
      splitright = true;

      # Search
      incsearch = true;
      inccommand = "split";
      ignorecase = true;
      smartcase = true;

      # Tab options
      tabstop = 2;
      shiftwidth = 2;
      expandtab = true;
      autoindent = true;

      scrolloff = 8;
      cursorline = true;
      cursorcolumn = false;
      signcolumn = "yes";

      wrap = true;

      termguicolors = true;
    };
  };
}
