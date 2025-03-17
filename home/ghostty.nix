{ config, ... }: {
  programs.ghostty = {
    enable = true;

    settings = {
      font-family = "Victor Mono";

      window-padding-x = 10;
      window-padding-y = 10;

      window-decoration = false;
      gtk-single-instance = true;

      confirm-close-surface = false;

      palette = [
        "0=${config.colorScheme.palette.base00}"
        "1=${config.colorScheme.palette.base08}"
        "2=${config.colorScheme.palette.base0B}"
        "3=${config.colorScheme.palette.base0A}"
        "4=${config.colorScheme.palette.base0D}"
        "5=${config.colorScheme.palette.base0E}"
        "6=${config.colorScheme.palette.base0C}"
        "7=${config.colorScheme.palette.base05}"
        "8=${config.colorScheme.palette.base03}"
        "9=${config.colorScheme.palette.base08}"
        "10=${config.colorScheme.palette.base0B}"
        "11=${config.colorScheme.palette.base0A}"
        "12=${config.colorScheme.palette.base0D}"
        "13=${config.colorScheme.palette.base0E}"
        "14=${config.colorScheme.palette.base0C}"
        "15=${config.colorScheme.palette.base07}"
      ];

      background = config.colorScheme.palette.base00;
      foreground = config.colorScheme.palette.base05;
      cursor-color = config.colorScheme.palette.base05;
      cursor-text = config.colorScheme.palette.base00;
      selection-background = config.colorScheme.palette.base04;
      selection-foreground = config.colorScheme.palette.base00;
    };
  };
}
