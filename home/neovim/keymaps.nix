{ ... }: {
  programs.nixvim.keymaps = [
    {
      action = "<cmd>Neogit<CR>";
      key = "<leader>gg";
      options = {
        silent = true;
      };
    }
  ];
}
