-- RitnGuiCommon
----------------------------------------------------------------
local class = require(ritnlib.defines.class.core)
local modGui = require("mod-gui")
local libGui = require(ritnlib.defines.class.luaClass.gui)
----------------------------------------------------------------




----------------------------------------------------------------
--- CLASSE DEFINES
----------------------------------------------------------------
local RitnGuiCommon = class.newclass(libGui, function(base, event)
    libGui.init(base, event, ritnlib.defines.menu.name, "flow-main")
    base.object_name = "RitnGuiCommon"
    --------------------------------------------------
    base.gui_name = "common"  
    --------------------------------------------------
    base.gui = { modGui.get_frame_flow(base.player) }
    --------------------------------------------------
    base.content = remote.call("RitnMenuButton", "get_gui_common").content
    --------------------------------------------------
end)

----------------------------------------------------------------


function RitnGuiCommon:create()
    if self.gui[1][self.gui_name.."-"..self.main_gui] then return self end
    
    local elements = remote.call("RitnMenuButton", "get_gui_common").elements
    remote.call("RitnMenuButton", "create_common_gui", self.gui[1], elements)
 
    return self
end

----------------------------------------------------------------
return RitnGuiCommon