-- MODULE : COMMON (GUI)
---------------------------------------------------------------------------------------------
local RitnGuiCommon = require(ritnlib.defines.menu.class.guiCommon)
local RitnGuiMenu = require(ritnlib.defines.menu.class.guiButtonMenu)
---------------------------------------------------------------------------------------------


local function on_player_created(e) 
    RitnGuiCommon(e):create()
end


---------------------------------------------------------------------------------------------
local module = {events = {}}
---------------------------------------------------------------------------------------------
module.events[defines.events.on_player_created] = on_player_created
---------------------------------------------------------------------------------------------
return module