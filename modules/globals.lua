---------------------------------------------------------------------------------------------
-- GLOBALS
---------------------------------------------------------------------------------------------
if global.menu == nil then
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

---------------------------------------------------------------------------------------------
-- REMOTE FUNCTIONS INTERFACE
---------------------------------------------------------------------------------------------
local menu_interface = {
    ["disable.module.player"] = function()
        global.menu.modules.player = false
    end,

    ["get_gui_common"] = function()
        return global.menu.gui.common
    end,
    ["set_gui_common"] = function(gui_common)
        global.menu.gui.common = gui_common
    end,

    ["add_actions"] = function(gui_name, actions)
        global.menu.gui.actions[gui_name] = actions
    end,
    ["set_action.menu"] = function(actions)
        global.menu.gui.actions.menu = actions
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