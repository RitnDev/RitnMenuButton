---------------------------------------------------------------------------------------------
-- GLOBALS
---------------------------------------------------------------------------------------------
if storage.menu == nil then
    storage.menu = { 
        modules = {
            player = true,
        },
        gui = {
            actions = {},
            common = require(ritnlib.defines.menu.gui.common),
            --menu = require(ritnlib.defines.menu.gui.menu)
        }
    }
end

---------------------------------------------------------------------------------------------
-- REMOTE FUNCTIONS INTERFACE
---------------------------------------------------------------------------------------------
local menu_interface = {
    ["disable.module.player"] = function()
        storage.menu.modules.player = false
    end,

    ["get_gui_common"] = function()
        return storage.menu.gui.common
    end,
    ["set_gui_common"] = function(gui_common)
        storage.menu.gui.common = gui_common
    end,

    ["add_actions"] = function(gui_name, actions)
        storage.menu.gui.actions[gui_name] = actions
    end,
    ["set_action.menu"] = function(actions)
        storage.menu.gui.actions.menu = actions
    end,

    ["create_common_gui"] = function(gui_start, elements) 
        local content = {}
        
        content["start"] = gui_start
    
        for i, element in pairs(elements) do 
            content[element.name] = content[element.parent].add(element.gui)
        end
    end
}
remote.add_interface(ritnlib.defines.menu.name, menu_interface)
---------------------------------------------------------------------------------------------
return {}