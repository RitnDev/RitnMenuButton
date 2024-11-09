-- RitnMenuGuiCommon
----------------------------------------------------------------
local modGui = require("mod-gui")
----------------------------------------------------------------
--- CLASSE DEFINES
----------------------------------------------------------------
RitnMenuGuiCommon = ritnlib.classFactory.newclass(RitnLibGui, function(self, event)
    RitnLibGui.init(self, event, ritnlib.defines.menu.name, "flow-main")
    self.object_name = "RitnMenuGuiCommon"
    --------------------------------------------------
    self.gui_name = "common"  
    --------------------------------------------------
    self.gui = { modGui.get_frame_flow(self.player) }
    --------------------------------------------------
    self.content = remote.call("RitnMenuButton", "get_gui_common").content
    --------------------------------------------------
end)

----------------------------------------------------------------


function RitnMenuGuiCommon:create()
    if self.gui[1][self.gui_name.."-"..self.main_gui] then return self end
    
    local elements = remote.call("RitnMenuButton", "get_gui_common").elements
    remote.call("RitnMenuButton", "create_common_gui", self.gui[1], elements)

    return self
end

----------------------------------------------------------------
--return RitnMenuGuiCommon