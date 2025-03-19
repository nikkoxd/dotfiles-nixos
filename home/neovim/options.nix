{ ... }: {
  programs.nixvim = {
    enable = true;
    enableMan = true;
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

      # Folds
      foldlevel = 99;
      foldlevelstart = 99;
      foldenable = true;

      wrap = true;

      termguicolors = true;
    };
  };
}
