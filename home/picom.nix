{ lib, ... }: {
  services.picom = {
    enable = true;

    settings = {
      backend = "glx";

      shadow-radius = 12;
      shadow-opacity = 1;
      shadow-offset-x = -12;
      shadow-offset-y = -12;
      shadow-color = "#000000";

      blur = {
        method = "gaussian";
        size = 10;
        deviation = 5.0;
      };
    };
  };

  xdg.configFile."picom/picom.conf".text = lib.mkAfter ''
    rules = (
      {
        match = "window_type = 'desktop' || window_type = 'dock'";
        blur-background = false;
      },
      { 
        match = "window_type != 'desktop' && window_type != 'dock'"
        opacity = 0.9; 
        shadow = true; 
        blur-background = true;
      },
    )
    
    animations = (
      {
        triggers = [ "open" ];
        preset = "appear";
      },
      {
        triggers = [ "close" ];
        preset = "disappear";
      }
    )
  '';
}
