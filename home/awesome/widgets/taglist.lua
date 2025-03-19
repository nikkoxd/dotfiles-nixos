local wibox = require("wibox")
local awful = require("awful")
local gears = require("gears")
local beautiful = require("beautiful")

local taglist_buttons = gears.table.join(
	awful.button({}, 1, function(t)
		t:view_only()
	end),
	awful.button({ modkey }, 1, function(t)
		if client.focus then
			client.focus:move_to_tag(t)
		end
	end),
	awful.button({}, 3, awful.tag.viewtoggle),
	awful.button({ modkey }, 3, function(t)
		if client.focus then
			client.focus:toggle_tag(t)
		end
	end),
	awful.button({}, 4, function(t)
		awful.tag.viewnext(t.screen)
	end),
	awful.button({}, 5, function(t)
		awful.tag.viewprev(t.screen)
	end)
)

return function(screen)
	return wibox.widget({
		{
			children = {
				awful.widget.taglist({
					screen = screen,
					widget_template = {
						{
							{
								id = "text_role",
								widget = wibox.widget.textbox,
							},
							left = beautiful.wibar_internal_padding,
							right = beautiful.wibar_internal_padding,
							layout = wibox.container.margin,
						},
						id = "background_role",
						widget = wibox.container.background,
					},
					filter = awful.widget.taglist.filter.all,
					buttons = taglist_buttons,
				}),
			},
			widget = wibox.container.background,
		},
		left = beautiful.wibar_gap,
		right = beautiful.wibar_gap,
		widget = wibox.container.margin,
	})
end
