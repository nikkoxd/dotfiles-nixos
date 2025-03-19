{ pkgs, ... }: {
  xdg.configFile."matugen/templates/zellij.kdl".text = ''
    layout {
      default_tab_template {
        children
        pane size=1 borderless=true {
          plugin location="file://${pkgs.zjstatus}/bin/zjstatus.wasm" {
            hide_frame_for_single_pane "true"

            format_left  "{mode}#[fg={{colors.on_surface.default.hex}},bg={{colors.surface.default.hex}},bold] {session} {tabs}"
            format_right "{datetime}"

            mode_normal          "#[bg={{colors.primary.default.hex}}] "
            mode_tmux            "#[bg={{colors.secondary.default.hex}}] "
            mode_default_to_mode "tmux"

            tab_normal               "#[fg={{colors.on_surface.default.hex}}] {index} {name} {fullscreen_indicator}{sync_indicator}{floating_indicator}"
            tab_active               "#[fg={{colors.on_surface.default.hex}},bold,italic] {index} {name} {fullscreen_indicator}{sync_indicator}{floating_indicator}"
            tab_fullscreen_indicator "□ "
            tab_sync_indicator       "  "
            tab_floating_indicator   "󰉈 "

            datetime          "#[fg={{colors.on_surface.default.hex}}] {format} "
            datetime_format   "%A, %d %b %Y %H:%M"
            datetime_timezone "Europe/Berlin"
          }
        }
      }
    }
  '';
}
