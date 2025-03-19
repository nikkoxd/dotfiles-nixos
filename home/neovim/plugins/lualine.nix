{ ... }: {
  programs.nixvim.plugins.lualine = {
    enable = true;
    luaConfig.pre = ''
      local function bleh()
        return ""
      end
    '';
    settings = {
      options = {
        component_separators = "";
        section_separators = "";
        globalstatus = true;
      };
      sections = {
        lualine_a = [
          {
            __unkeyed-1 = "mode";
            fmt.__raw = "string.lower";
          }
        ];
        lualine_b = [
          ""
        ];
        lualine_c = [
          "diagnostics"
          {
            __unkeyed-1 = "filetype";
            icon_only = true;
            padding = {
              left = 1;
              right = 0;
            };
          }
          "filename"
        ];
        lualine_x = [
          "progress"
          "location"
        ];
        lualine_y = [
          ""
        ];
        lualine_z = [
          ""
        ];
      };
    };
  };
}
