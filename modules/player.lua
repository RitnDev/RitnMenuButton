-- MODULE : COMMON (GUI)
---------------------------------------------------------------------------------------------
local RitnGuiCommon = require(ritnlib.defines.menu.class.guiCommon)
local RitnGuiMenu = require(ritnlib.defines.menu.class.guiButtonMenu)
---------------------------------------------------------------------------------------------


local function on_player_created(e) 
    RitnGuiCommon(e):create()
end

local function on_gui_click(e)
    RitnGuiMenu(e):on_gui_click()
end

---------------------------------------------------------------------------------------------
local module = {events = {}}
---------------------------------------------------------------------------------------------
module.events[defines.events.on_player_created] = on_player_created
module.events[defines.events.on_gui_click] = on_gui_click
---------------------------------------------------------------------------------------------
return module