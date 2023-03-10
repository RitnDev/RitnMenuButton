------------------------------------------------------------------------------------------------------------------------
-- EVENTS
---------------------------------------------------------------------------------------------
local events = {}


-------------------------------------------
-- INIT GLOBAL MOD
-------------------------------------------
if not global.menu then
global.menu = { 
    modules = {
        player = true,
    },
    gui = {
        actions = {},
        common = require(ritnlib.defines.menu.gui.common),
        menu = require(ritnlib.defines.menu.gui.menu)
    }

}
end
-------------------------------------------
return events