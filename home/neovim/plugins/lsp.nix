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
      lua_ls = {
        enable = true;
        settings = {
          diagnostics.globals = [ "vim" "awesome" "client" "root" "screen" ];
          diagnostics.disable = [ "lowercase-global" ];
        };
      };
    };
  };
}
