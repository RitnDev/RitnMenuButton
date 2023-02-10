-------------------------------------------------------------------------------
local RitnSprite = require(ritnlib.defines.class.prototype.sprite)
local RitnStyle = require(ritnlib.defines.class.prototype.style)
-------------------------------------------------------------------------------

-- STYLES
RitnStyle():extendButton(ritnlib.defines.menu.names.styles.button_menu, "button")


-- SPRITES
RitnSprite:extend(
	ritnlib.defines.menu.names.sprite.button_menu,
	ritnlib.defines.menu.graphics.gui.button_menu
)
