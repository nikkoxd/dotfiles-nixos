{ inputs, pkgs, ... }: {
  programs.tmux = {
    enable = true;
    shortcut = "s";
    keyMode = "vi";
    terminal = "tmux-256color";

    escapeTime = 0;
    baseIndex = 1;
    clock24 = true;

    plugins = with pkgs; [
      tmuxPlugins.resurrect
      {
        plugin = tmuxPlugins.continuum;
        extraConfig = ''
          set -g @continuum-restore       'on'
          set -g @continuum-save-interval '15'
        '';
      }
      tmuxPlugins.tmux-floax
      {
        plugin = inputs.tmux-sessionx.packages.${system}.default;
        extraConfig = ''
          set -g @sessionx-bind 's'
        '';
      }
    ];

    extraConfig = ''
      bind -N "Source config"             r source-file ~/.config/tmux/tmux.conf
      bind -N "Kill pane"                 x kill-pane
      bind -N "Split window horizontally" | split-window -h
      bind -N "Split window vertically"   - split-window -v

      set -g renumber-windows   on
      set -g detach-on-destroy  off
      set -g mouse              on
      set -g allow-passthrough  on

      set -g status-justify               absolute-centre
      set -g status-style                 bg=color0
      set -g status-left                  "#[bg=color4,fg=color0] #{session_name} #[default] "
      set -g status-right                 " #{pane_title} %d-%b-%y %H:%M " 
      set -g window-status-format         " #I:#W"
      set -g window-status-current-format " #[bold]#[italics]#I:#W*#[default]"
    '';
  };
}
