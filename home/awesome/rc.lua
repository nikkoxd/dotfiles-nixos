-- If LuaRocks is installed, make sure that packages installed through it are
-- found (e.g. lgi). If LuaRocks is not installed, do nothing.
pcall(require, "luarocks.loader")

local awful = require("awful")
require("awful.autofocus")
local beautiful = require("beautiful")
require("awful.hotkeys_popup.keys")

require("errorhandling")

awesome.set_preferred_icon_size(32)

beautiful.init(os.getenv("HOME") .. "/.config/awesome/theme.lua")

terminal = "ghostty"
editor = os.getenv("EDITOR") or "nano"
editor_cmd = terminal .. " -e " .. editor
file_manager = "dolphin"
browser = "firefox"

modkey = "Mod4"

require("layouts")
require("menu")
require("wibar")
require("keybinds")
require("rules")
require("signals")

awful.spawn("nitrogen --restore")
