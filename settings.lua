--INITIALIZE
require("core.defines")

data:extend {
	-- BY PLAYER SETTINGS
	{
		-- Activation du bouton menu
		type = "bool-setting",
		name = ritnlib.defines.menu.settings.enable_main_button.name,
		setting_type = "runtime-per-user",
		default_value = ritnlib.defines.menu.settings.enable_main_button.value,
		order = ritnlib.defines.menu.prefix.name .. "menu-01"
	}

}