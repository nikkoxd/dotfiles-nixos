{ ... }: {
  programs.nixvim = {
    globals = {
      mapleaeder = " ";
      maplocalleader = " ";
    };
    keymaps = [
      {
        action = "<cmd>Neogit<CR>";
        key = "<leader>gg";
        options = {
          silent = true;
        };
      }
    ];
  };
}
