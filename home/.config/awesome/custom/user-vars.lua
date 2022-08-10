

user_vars = {
    home = os.getenv("HOME"),
    -- This is used later as the default terminal and editor to run.
    terminal = "kitty",
    editor = os.getenv("EDITOR") or "vim",
    modkey = "Mod4",
}


user_vars.editor_cmd = user_vars.terminal .. " -e " .. user_vars.editor