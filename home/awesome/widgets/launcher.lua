local wibox = require("wibox")
local awful = require("awful")
local beautiful = require("beautiful")

return wibox.widget({
	children = {
		awful.widget.launcher({
			image = beautiful.awesome_icon,
			menu = mymainmenu,
		}),
	},
	right = beautiful.wibar_internal_gap,
	widget = wibox.container.margin,
})
