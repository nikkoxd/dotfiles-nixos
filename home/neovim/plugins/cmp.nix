{ ... }: {
  programs.nixvim.plugins = {
    cmp = {
      enable = true;
      autoEnableSources = true;

      settings = {
        mapping = {
          "<C-n>" = "cmp.mapping(cmp.mapping.select_next_item())";
          "<C-p>" = "cmp.mapping(cmp.mapping.select_prev_item())";
          "<C-b>" = "cmp.mapping.scroll_docs(-4)";
          "<C-f>" = "cmp.mapping.scroll_docs(4)";
          "<C-Space>" = "cmp.mapping.complete()";
          "<C-e>" = "cmp.mapping.close()";
          "<CR>" = "cmp.mapping.confirm({ select = false })";
        };
        sources = [
          { name = "nvim_lsp"; }
          { name = "lspkind"; }
          { name = "path"; }
          { name = "buffer"; }
        ];
      };
    };

    lspkind = {
      enable = true;
      cmp = {
        enable = true;
        menu = {
          nvim_lsp = "[LSP]";
          nvim_lua = "[api]";
          path = "[path]";
          luasnip = "[snip]";
          buffer = "[buf]";
        };
      };
    };
  };
}
