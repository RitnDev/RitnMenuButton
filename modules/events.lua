------------------------------------------------------------------------------------------------------------------------
-- EVENTS
---------------------------------------------------------------------------------------------
local events = {}


-------------------------------------------
-- INIT GLOBAL MOD
-------------------------------------------
if not global.menu.initialize then
global.menu = { 
    modules = {
        player = true,
    },
    gui = {
        actions = {},
        common = require(ritnlib.defines.menu.gui.common),
        menu = require(ritnlib.defines.menu.gui.menu)
    },
    initialize = true
}
end
-------------------------------------------
return events