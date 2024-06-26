-- RitnGuiMenuButton
----------------------------------------------------------------
local modGui = require("mod-gui")
----------------------------------------------------------------
local flib = require(ritnlib.defines.menu.gui.menu)
----------------------------------------------------------------
--- CLASSE DEFINES
----------------------------------------------------------------
RitnGuiMenuButton = ritnlib.classFactory.newclass(RitnLibGui, function(self, event)
    RitnLibGui.init(self, event, ritnlib.defines.menu.name, "button-menu")
    self.object_name = "RitnGuiMenuButton"
    --------------------------------------------------
    self.gui_name = "ritn"
    self.visible = settings.get_player_settings(self.player)[ritnlib.defines.menu.settings.enable_main_button.name].value
    --------------------------------------------------
    self.gui = { modGui.get_button_flow(self.player) }
    --------------------------------------------------
    self.content = flib.getContent()
    --------------------------------------------------
end)

----------------------------------------------------------------


function RitnGuiMenuButton:create()
    if self.gui[1][self.gui_name.."-"..self.main_gui] then return self end
    if self.visible == false then return self end

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
--return RitnGuiMenuButton