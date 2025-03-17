{ config, pkgs, ... }: {
  programs.zellij = {
    enable = true;
    settings = {
      simplified_ui = true;
      pane_frames = false;
      keybinds = {
        normal = {
          "bind \"Alt r\"" = { SwitchToMode = "resize"; };
          "bind \"Alt p\"" = { SwitchToMode = "pane"; };
          "bind \"Alt m\"" = { SwitchToMode = "move"; };
          "bind \"Alt t\"" = { SwitchToMode = "tab"; };
          "bind \"Alt s\"" = { SwitchToMode = "search"; };
          "bind \"Alt o\"" = { SwitchToMode = "session"; };
        };
        unbind = [
          "Ctrl n"
          "Ctrl p"
          "Ctrl h"
          "Ctrl t"
          "Ctrl s"
          "Ctrl o"
        ];
      };
    };
  };

  xdg.configFile."zellij/layouts/default.kdl".text = ''
    layout {
      default_tab_template {
        children
        pane size=1 borderless=true {
          plugin location="file://${pkgs.zjstatus}/bin/zjstatus.wasm" {
            hide_frame_for_single_pane "true"

            format_left  "{mode}#[fg=#${config.colorScheme.palette.base05},bg=#${config.colorScheme.palette.base02},bold] {session}#[bg=#${config.colorScheme.palette.base01}] {tabs}"
            format_right "{command_kubectx}#[fg=#${config.colorScheme.palette.base0A},bg=#${config.colorScheme.palette.base02}]::{command_kubens}{datetime}"
            format_space "#[bg=#${config.colorScheme.palette.base01}]"

            mode_normal          "#[bg=#${config.colorScheme.palette.base0A}] "
            mode_tmux            "#[bg=#${config.colorScheme.palette.base0D}] "
            mode_default_to_mode "tmux"

            tab_normal               "#[fg=#${config.colorScheme.palette.base05},bg=#${config.colorScheme.palette.base01}] {index} {name} {fullscreen_indicator}{sync_indicator}{floating_indicator}"
            tab_active               "#[fg=#${config.colorScheme.palette.base05},bg=#${config.colorScheme.palette.base01},bold,italic] {index} {name} {fullscreen_indicator}{sync_indicator}{floating_indicator}"
            tab_fullscreen_indicator "□ "
            tab_sync_indicator       "  "
            tab_floating_indicator   "󰉈 "

            command_kubectx_command  "kubectx -c"
            command_kubectx_format   "#[fg=#${config.colorScheme.palette.base05},bg=#${config.colorScheme.palette.base01},italic] {stdout}"
            command_kubectx_interval "2"

            command_kubens_command  "kubens -c"
            command_kubens_format   "#[fg=#${config.colorScheme.palette.base05},bg=#${config.colorScheme.palette.base01}]{stdout} "
            command_kubens_interval "2"

            datetime          "#[fg=#${config.colorScheme.palette.base05},bg=#${config.colorScheme.palette.base01}] {format} "
            datetime_format   "%A, %d %b %Y %H:%M"
            datetime_timezone "Europe/Berlin"
          }
        }
      }
    }
  '';
}
