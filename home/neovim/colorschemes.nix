{ ... }: {
  programs.nixvim = {
    colorschemes.base16 = {
      enable = true;
      luaConfig.pre = ''
        local palette = dofile(os.getenv("HOME") .. "/.config/nvim/palette.lua")
      '';
      colorscheme = {
        base00.__raw = "palette.base00";
        base01.__raw = "palette.base01";
        base02.__raw = "palette.base02";
        base03.__raw = "palette.base03";
        base04.__raw = "palette.base04";
        base05.__raw = "palette.base05";
        base06.__raw = "palette.base06";
        base07.__raw = "palette.base07";
        base08.__raw = "palette.base08";
        base09.__raw = "palette.base09";
        base0A.__raw = "palette.base0A";
        base0B.__raw = "palette.base0B";
        base0C.__raw = "palette.base0C";
        base0D.__raw = "palette.base0D";
        base0E.__raw = "palette.base0E";
        base0F.__raw = "palette.base0F";
      };
    };
  };
}
