------------------------------------------------------------------------------------------------------------------------
-- EVENTS
---------------------------------------------------------------------------------------------
local events = {}

--[[ 
function events.on_init(event)

end
]]


------------------------------------------------------------------------------------------------------------------------
-- event : custom-input -> toggle_main_menu
script.on_event(ritnlib.defines.menu.names.customInput.toggle_main_menu, function(event)
    remote.call("RitnMenuButton", "gui_action_ritn", "button-menu", event)
end)


-------------------------------------------
-- INIT GLOBAL MOD
-------------------------------------------
global.menu = { 
    modules = {
        player = true,
    },
    gui = {
        actions = {
            ritn = {
                active = function() return end,
            },
        },
        common = require(ritnlib.defines.menu.gui.common),
        menu = require(ritnlib.defines.menu.gui.menu)
    }

}
-------------------------------------------
return events