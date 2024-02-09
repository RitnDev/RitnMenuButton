-- MODULE : PLAYER
---------------------------------------------------------------------------------------------
local RitnEvent = require(ritnlib.defines.core.class.event)
---------------------------------------------------------------------------------------------
local RitnGuiCommon = require(ritnlib.defines.menu.class.guiCommon)
local RitnGuiMenuButton = require(ritnlib.defines.menu.class.guiButtonMenu)
---------------------------------------------------------------------------------------------


local function on_player_created(e)
    if global.menu.modules.player == false then return end 
    RitnGuiCommon(e):create()
end


local function on_runtime_mod_setting_changed(e)
    local rEvent = RitnEvent(e)
    if settings.get_player_settings(rEvent.player)[ritnlib.defines.menu.settings.enable_main_button.name].value == false then 
        RitnGuiMenuButton(e):destroy()
    else
        RitnGuiMenuButton(e):create()
    end 
end


---------------------------------------------------------------------------------------------
local module = {events = {}}
---------------------------------------------------------------------------------------------
module.events[defines.events.on_player_created] = on_player_created
module.events[defines.events.on_runtime_mod_setting_changed] = on_runtime_mod_setting_changed
---------------------------------------------------------------------------------------------
return module