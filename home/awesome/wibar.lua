local awful = require("awful")
local wibox = require("wibox")
local beautiful = require("beautiful")

local launcher = require("widgets.launcher")
local layoutbox = require("widgets.layoutbox")
local taglist = require("widgets.taglist")
local tasklist = require("widgets.tasklist")

-- local function set_wallpaper(s)
-- 	-- Wallpaper
-- 	if beautiful.wallpaper then
-- 		local wallpaper = beautiful.wallpaper
-- 		-- local wallpaper = os.getenv("HOME") .. "/.config/awesome/wallpapers/wallpaper1.jpg"
-- 		-- If wallpaper is a function, call it with the screen
-- 		if type(wallpaper) == "function" then
-- 			wallpaper = wallpaper(s)
-- 		end
-- 		gears.wallpaper.maximized(wallpaper, s, true)
-- 	end
-- end

-- Re-set wallpaper when a screen's geometry changes (e.g. different resolution)
-- screen.connect_signal("property::geometry", set_wallpaper)

awful.screen.connect_for_each_screen(function(s)
	awful.tag({ "1", "2", "3", "4", "5", "6", "7", "8", "9" }, s, awful.layout.layouts[1])

	s.wibox = awful.wibar({
		position = "top",
		screen = s,
	})

	s.wibox:setup({
		{
			layout = wibox.layout.align.horizontal,
			{
				layout = wibox.layout.fixed.horizontal,
				launcher,
				taglist(s),
			},
			tasklist(s),
			{
				{
					layout = wibox.layout.fixed.horizontal,
					awful.widget.keyboardlayout(),
					wibox.widget.systray(),
					wibox.widget.textclock(),
					layoutbox(s),
				},
				bg = beautiful.bg_normal,
				widget = wibox.container.background,
			},
		},
		top = beautiful.wibar_padding_top,
		bottom = beautiful.wibar_padding_bottom,
		left = beautiful.wibar_padding_left,
		right = beautiful.wibar_padding_right,
		widget = wibox.container.margin,
	})
end)
-- }}}
