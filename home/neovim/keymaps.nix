{ ... }: {
  programs.nixvim = {
    globals = {
      mapleader = " ";
      maplocalleader = " ";
    };
    keymaps = [
      {
        action = "<cmd>Neotree toggle<CR>";
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
      {
        action = "<C-w>h";
        key = "<C-h>";
        options = {
          silent = true;
          noremap = true;
        };
      }
      {
        action = "<C-w>j";
        key = "<C-j>";
        options = {
          silent = true;
          noremap = true;
        };
      }
      {
        action = "<C-w>k";
        key = "<C-k>";
        options = {
          silent = true;
          noremap = true;
        };
      }
      {
        action = "<C-w>l";
        key = "<C-l>";
        options = {
          silent = true;
          noremap = true;
        };
      }
    ];
  };
}
