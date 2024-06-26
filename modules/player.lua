-- MODULE : PLAYER
---------------------------------------------------------------------------------------------


local function on_player_created(e)
    if global.menu.modules.player == false then return end 
    log('> event : '.. game.table_to_json(e))
    RitnMenuGuiCommon(e):create()
end


local function on_runtime_mod_setting_changed(e)
    local rEvent = RitnCoreEvent(e)
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