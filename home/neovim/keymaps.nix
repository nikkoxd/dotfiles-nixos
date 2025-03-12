{ ... }: {
  programs.nixvim = {
    globals = {
      mapleader = " ";
      maplocalleader = " ";
    };
    keymaps = [
      {
        action = "<cmd>Telescope find_files<CR>";
        key = "<leader>pf";
        options = {
          silent = true;
          noremap = true;
        };
      }
      {
        action = "<cmd>lua require('telescope.builtin').find_files({ hidden = true, no_ignore = true })<CR>";
        key = "<leader>ph";
        options = {
          silent = true;
          noremap = true;
        };
      }
      {
        action = "<cmd>Telescope git_files<CR>";
        key = "<leader>pg";
        options = {
          silent = true;
          noremap = true;
        };
      }
      {
        action = "<cmd>Telescope live_grep<CR>";
        key = "<leader>ps";
        options = {
          silent = true;
          noremap = true;
        };
      }
      {
        action = "<cmd>Telescope help_tags<CR>";
        key = "<leader>vh";
        options = {
          silent = true;
          noremap = true;
        };
      }
      {
        action = "<cmd>Telescope oldfiles<CR>";
        key = "<leader>pr";
        options = {
          silent = true;
          noremap = true;
        };
      }
      {
        action = "<cmd>Telescope buffers<CR>";
        key = "<leader>pb";
        options = {
          silent = true;
          noremap = true;
        };
      }
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
