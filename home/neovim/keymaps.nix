{ ... }: {
  programs.nixvim = {
    globals = {
      mapleader = " ";
      maplocalleader = " ";
    };
    keymaps = [
      {
        action = "function() require('telescope.builtin').find_files() end";
        key = "<leader>pf";
        options = {
          silent = true;
          noremap = true;
        };
      }
      {
        action = "function() require('telescope.builtin').find_files({ hidden = true, no_ignore = true }) end";
        key = "<leader>ph";
        options = {
          silent = true;
          noremap = true;
        };
      }
      {
        action = "function() require('telescope.builtin').git_files() end";
        key = "<leader>pg";
        options = {
          silent = true;
          noremap = true;
        };
      }
      {
        action = "function() require('telescope.builtin').live_grep() end";
        key = "<leader>ps";
        options = {
          silent = true;
          noremap = true;
        };
      }
      {
        action = "function() require('telescope.builtin').help_tags() end";
        key = "<leader>vh";
        options = {
          silent = true;
          noremap = true;
        };
      }
      {
        action = "function() require('telescope.builtin').oldfiles() end";
        key = "<leader>pr";
        options = {
          silent = true;
          noremap = true;
        };
      }
      {
        action = "function() require('telescope.builtin').buffers() end";
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
