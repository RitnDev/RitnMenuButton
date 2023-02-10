-- RitnGuiMenuButton
----------------------------------------------------------------
local class = require(ritnlib.defines.class.core)
local modGui = require("mod-gui")
local libGui = require(ritnlib.defines.class.luaClass.gui)
----------------------------------------------------------------
local flib = require(ritnlib.defines.menu.gui.menu)
----------------------------------------------------------------



----------------------------------------------------------------
--- CLASSE DEFINES
----------------------------------------------------------------
local RitnGuiMenuButton = class.newclass(libGui, function(base, event)
    libGui.init(base, event, ritnlib.defines.menu.name, "button-menu")
    base.object_name = "RitnGuiMenuButton"
    --------------------------------------------------
    base.gui_name = "ritn"
    --------------------------------------------------
    base.gui = { modGui.get_button_flow(base.player) }
    --------------------------------------------------
    base.content = flib.getContent()
    --------------------------------------------------
end)

----------------------------------------------------------------


function RitnGuiMenuButton:create()
    if self.gui[1][self.gui_name.."-"..self.main_gui] then return self end

    local element = flib.getElement(self.gui_name)

    -- assembly gui elements
    local content = {
        button = {},
    }
    
    -- Main Button Menu
    content.button.menu =       self.gui[1].add(element.button.menu)
 
    return self
end

function RitnGuiMenuButton:destroy()
    if self.gui[1][self.gui_name.."-"..self.main_gui] == nil then return self end

    self.gui[1][self.gui_name.."-"..self.main_gui].destroy()
end

----------------------------------------------------------------
return RitnGuiMenuButton