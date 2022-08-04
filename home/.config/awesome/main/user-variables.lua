local home = os.getenv("HOME")

local _M = {
	terminal =
	

-- This is used later as the default terminal and editor to run.
terminal = "kitty"
editor = os.getenv("EDITOR") or "vim"
editor_cmd = terminal .. " -e " .. editor
