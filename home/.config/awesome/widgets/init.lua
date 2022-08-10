
local awful = require("awful")
local beautiful = require("beautiful")
local wibox = require("wibox")
local gears = require("gears")

require("widgets.menu")

require("widgets.keyboard-layout")

require("widgets.clock")

-- Re-set wallpaper when a screen's geometry changes (e.g. different resolution)
screen.connect_signal("property::geometry", require("widgets.wallpaper"))

awful.screen.connect_for_each_screen(function(s)
    -- Wallpaper
    require("widgets.wallpaper")(s)

    -- Each screen has its own tag table.
    awful.tag({ "1", "2", "3", "4", "5", "6", "7", "8", "9" }, s, awful.layout.layouts[1])

    -- Create a promptbox for each screen
    s.mypromptbox = awful.widget.prompt()

    -- Create an imagebox widget which will contain an icon indicating which layout we're using.

    -- We need one layoutbox per screen.
    s.mylayoutbox = require("widgets.layoutbox")(s)
    -- Create a taglist widget
    s.mytaglist = require("widgets.taglist")(s)
    
    -- Create a tasklist widget
    s.mytasklist = require("widgets.tasklist")(s)

    -- Create the wibox
    s.mywibox = require("widgets.wibar")(s)

    -- Add widgets to the wibox
    s.mywibox:setup {
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
    }
end)
-- }}}