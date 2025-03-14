{ lib, ... }: {
  services.picom = {
    enable = true;

    settings = {
      backend = "glx";

      shadow = true;
      shadow-radius = 12;
      shadow-opacity = 1;
      shadow-offset-x = -12;
      shadow-offset-y = -12;
      shadow-color = "#000000";

      active-opacity = 0.9;
      inactive-opacity = 0.9;

      # fading = true;
      # fade-in-step = 0.5;
      # fade-out-step = 0.5;

      corner-radius = 10;
      rounded-corners-exclude = [
        "window_type = 'dock'"
        "window_type = 'desktop'"
      ];
      blur = {
        method = "gaussian";
        size = 10;
        deviation = 5.0;
      };
    };
  };

  xdg.configFile."picom/picom.conf".text = lib.mkAfter ''
    animations = ({
      triggers = [ "open", "close", "show", "hide", "size", "position" ];
      preset = "geometry-change";
    })
  '';
}
