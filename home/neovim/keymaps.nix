{ ... }: {
  programs.nixvim = {
    globals = {
      mapleader = " ";
      maplocalleader = " ";
    };
    keymaps = [
      {
        action = "<cmd>Neogit<CR>";
        key = "<leader>gg";
        options = {
          silent = true;
          noremap = true;
        };
      }
    ];
  };
}
