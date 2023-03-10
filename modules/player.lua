-- MODULE : COMMON (GUI)
---------------------------------------------------------------------------------------------
local RitnGuiCommon = require(ritnlib.defines.menu.class.guiCommon)
---------------------------------------------------------------------------------------------


local function on_player_created(e)
    if global.menu.modules.player == false then return end 
    RitnGuiCommon(e):create()
end


---------------------------------------------------------------------------------------------
local module = {events = {}}
---------------------------------------------------------------------------------------------
module.events[defines.events.on_player_created] = on_player_created
---------------------------------------------------------------------------------------------
return module