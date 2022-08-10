local awful = require("awful")
return function(s)
    local wibar = awful.wibar({ position = "top", screen = s })

    return wibar
end