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
        lualine_a = [ "" ];
        lualine_b = [ "" ];
        lualine_c = [
          {
            __unkeyed-1 = "diagnostics";
            component_separators.left = "";
          }
          {
            __unkeyed-1 = "filetype";
            icon_only = true;
            padding = {
              left = 1;
              right = 0;
            };
          }
          {
            __unkeyed-1 = "filename";
            symbols = {
              modified = "(modified)";
              readonly = "(readonly)";
              unnamed = "unnamed";
              newfile = "new_file";
            };
          }
        ];
        lualine_x = [
          "progress"
          "location"
        ];
        lualine_y = [ "" ];
        lualine_z = [ "" ];
      };
    };
  };
}
