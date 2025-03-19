{ config, ... }: {
  gtk = {
    enable = true;
    gtk3.extraCss = ''
      @import '${config.home.homeDirectory}/.config/gtk-3.0/colors.css';

      .window-frame {
        box-shadow: 0 0 0 0;
        margin: 0;
      }
      window decoration {
        margin: 0;
        padding: 0;
        border: none;
      }
    '';
    gtk4.extraCss = ''
      @import '${config.home.homeDirectory}/.config/gtk-4.0/colors.css';

      .background {
        margin: 0;
        padding: 0;
        box-shadow: 0 0 0 0;
      }

      .titlebar,
      .titlebar .background,
      decoration,
      window,
      window.background
      {
          border-radius: 0;
      }
    '';
  };
}
