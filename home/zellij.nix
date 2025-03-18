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
}
