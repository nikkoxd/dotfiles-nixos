local awful = require("awful")
local wibox = require("wibox")
local gears = require("gears")
local beautiful = require("beautiful")

local xresources = require("beautiful.xresources")
local dpi = xresources.apply_dpi

-- launcher
local mylauncher = wibox.widget({
	children = {
		awful.widget.launcher({
			image = beautiful.awesome_icon,
			menu = mymainmenu,
		}),
	},
	left = dpi(18),
	right = dpi(5),
	top = dpi(5),
	bottom = dpi(5),
	widget = wibox.container.margin,
})

-- Keyboard map indicator and switcher
local mykeyboardlayout = awful.widget.keyboardlayout()

-- {{{ Wibar
-- Create a textclock widget
local mytextclock = wibox.widget.textclock()

-- Create a wibox for each screen and add it
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

local tasklist_buttons = gears.table.join(
	awful.button({}, 1, function(c)
		if c == client.focus then
			c.minimized = true
		else
			c:emit_signal("request::activate", "tasklist", { raise = true })
		end
	end),
	awful.button({}, 3, function()
		awful.menu.client_list({ theme = { width = 250 } })
	end),
	awful.button({}, 4, function()
		awful.client.focus.byidx(1)
	end),
	awful.button({}, 5, function()
		awful.client.focus.byidx(-1)
	end)
)

local function set_wallpaper(s)
	-- Wallpaper
	if beautiful.wallpaper then
		local wallpaper = beautiful.wallpaper
		-- local wallpaper = os.getenv("HOME") .. "/.config/awesome/wallpapers/wallpaper1.jpg"
		-- If wallpaper is a function, call it with the screen
		if type(wallpaper) == "function" then
			wallpaper = wallpaper(s)
		end
		gears.wallpaper.maximized(wallpaper, s, true)
	end
end

-- Re-set wallpaper when a screen's geometry changes (e.g. different resolution)
screen.connect_signal("property::geometry", set_wallpaper)

awful.screen.connect_for_each_screen(function(s)
	-- Wallpaper
	-- set_wallpaper(s)

	-- Each screen has its own tag table.
	awful.tag({ "1", "2", "3", "4", "5", "6", "7", "8", "9" }, s, awful.layout.layouts[1])

	-- Create a promptbox for each screen
	s.mypromptbox = awful.widget.prompt()
	-- Create an imagebox widget which will contain an icon indicating which layout we're using.
	-- We need one layoutbox per screen.
	s.mylayoutbox = wibox.widget({
		children = { awful.widget.layoutbox(s) },
		left = dpi(5),
		right = dpi(18),
		top = dpi(5),
		bottom = dpi(5),
		widget = wibox.container.margin,
	})
	s.mylayoutbox:buttons(gears.table.join(
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
	-- Create a taglist widget
	s.mytaglist = wibox.widget({
		{
			children = {
				awful.widget.taglist({
					screen = s,
					widget_template = {
						{
							{
								id = "text_role",
								widget = wibox.widget.textbox,
							},
							left = dpi(8),
							right = dpi(8),
							layout = wibox.container.margin,
						},
						id = "background_role",
						widget = wibox.container.background,
					},
					filter = awful.widget.taglist.filter.all,
					buttons = taglist_buttons,
				}),
			},
			shape = gears.shape.rounded_rect,
			widget = wibox.container.background,
		},
		left = dpi(5),
		right = dpi(5),
		top = dpi(3),
		bottom = dpi(3),
		widget = wibox.container.margin,
	})

	-- Create a tasklist widget
	s.mytasklist = wibox.widget({
		children = {
			awful.widget.tasklist({
				screen = s,
				style = {
					shape = gears.shape.rounded_rect,
				},
				filter = awful.widget.tasklist.filter.currenttags,
				buttons = tasklist_buttons,
			}),
		},
		left = dpi(10),
		right = dpi(10),
		top = dpi(3),
		bottom = dpi(3),
		widget = wibox.container.margin,
	})
	-- s.mytasklist = wibox.widget({
	-- 	children = {
	-- 	},
	-- 	borders = { bottom = dpi(5) },
	-- 	widget = wibox.container.border,
	-- })

	-- Create the wibox
	s.mywibox = awful.wibar({
		position = "top",
		screen = s,
	})

	-- Add widgets to the wibox
	s.mywibox:setup({
		layout = wibox.layout.align.horizontal,
		{ -- Left widgets
			layout = wibox.layout.fixed.horizontal,
			mylauncher,
			s.mytaglist,
			s.mypromptbox,
		},
		s.mytasklist, -- Middle widget
		{ -- Right widgets
			layout = wibox.layout.fixed.horizontal,
			mykeyboardlayout,
			wibox.widget.systray(),
			mytextclock,
			s.mylayoutbox,
		},
	})
end)
-- }}}
