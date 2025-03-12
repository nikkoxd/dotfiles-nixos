{ ... }: {
  programs.nixvim.plugins.mini = {
    enable = true;
    mockDevIcons = true;
    modules = {
      ai = {};
      icons = {};
      notify = {
        lsp_progress.enable = false;
      };
      starter = {};
    };
  };
}
