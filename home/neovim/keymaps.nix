{ ... }: {
  programs.nixvim = {
    globals = {
      mapleader = " ";
      maplocalleader = " ";
    };
    keymaps = [
      {
        action = "<cmd>Neotree<CR>";
        key = "<leader>pv";
        options = {
          silent = true;
          noremap = true;
        };
      }
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
