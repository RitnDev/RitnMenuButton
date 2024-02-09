--INITIALIZE
----------------------------------------------------------------------
require("core.defines")
----------------------------------------------------------------------
local RitnSetting = require(ritnlib.defines.class.ritnClass.setting)
----------------------------------------------------------------------
-- BY PLAYER SETTINGS
----------------------------------------------------------------------
local rSetting = RitnSetting(ritnlib.defines.menu.settings.enable_main_button.name)
rSetting:setOrder(ritnlib.defines.menu.name .. "menu-01"):setSettingPlayer()
rSetting:setDefaultValueBool(ritnlib.defines.menu.settings.enable_main_button.value)
rSetting:new()
----------------------------------------------------------------------