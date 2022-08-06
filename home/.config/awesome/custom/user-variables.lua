--------------------
-- User Variables --
--------------------

local awful = require("awful")
local home = os.getenv("HOME")

user_vars = {

  -- Autotiling layouts
  layouts = {
    awful.layout.suit.tile,
    awful.layout.suit.tile.left,
    awful.layout.suit.tile.bottom,
    awful.layout.suit.tile.top,
    awful.layout.suit.floating,
    awful.layout.suit.fair,
    awful.layout.suit.fair.horizontal,
    awful.layout.suit.corner.nw,
    awful.layout.suit.corner.ne,
    awful.layout.suit.corner.sw,
    awful.layout.suit.corner.se,
    awful.layout.suit.magnifier,
    awful.layout.suit.max,
    awful.layout.suit.max.fullscreen,
    awful.layout.suit.spiral.dwindle,
  },

  -- Write the terminal command to start anything here
  autostart = {
    "picom --experimental-backends"
  },

  -- Theme font:
  font = {
    regular = "Noto Sans, 14",
    bold = "Noto Sans, bold 14",
    extrabold = "Noto Sans, ExtraBold 14",
    specify = "Noto Sans"
  },

  -- Default Terminal
  terminal = "kitty",
  editor = os.getenv("EDITOR") or "vim",
  editor_cmd = terminal .. " -e " .. editor,

  -- Default modkey.
  modkey = "Mod4"

  -- place your wallpaper at this path with this name, you could also try to change the path
  wallpaper = home .. "/.config/awesome/assets/wallpaper.jpg",



}


