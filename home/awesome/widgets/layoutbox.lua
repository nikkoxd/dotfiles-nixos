local wibox = require("wibox")
local gears = require("gears")
local awful = require("awful")
local beautiful = require("beautiful")

return function(screen)
	lb = wibox.widget({
		children = { awful.widget.layoutbox(screen) },
		left = beautiful.wibar_internal_gap,
		widget = wibox.container.margin,
	})

	lb:buttons(gears.table.join(
		awful.button({}, 1, function()
			awful.layout.inc(1)
		end),
		awful.button({}, 3, function()
			awful.layout.inc(-1)
		end),
		awful.button({}, 4, function()
			awful.layout.inc(1)
		end),
		awful.button({}, 5, function()
			awful.layout.inc(-1)
		end)
	))

	return lb
end
