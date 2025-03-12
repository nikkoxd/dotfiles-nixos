{ ... }: {
  programs.nixvim.plugins.lsp = {
    enable = true;

    keymaps = {
      silent = true;
      diagnostic = {
        "<leader>k" = "goto_prev";
        "<leader>j" = "goto_next";
      };

      lspBuf = {
        gd = "definition";
        gD = "references";
        gt = "type_definition";
        gi = "implementation";
        K = "hover";
        cr = "rename";
      };
    };

    servers = {
      nil_ls.enable = true;
    };
  };
}
