local libGuiElement = require(ritnlib.defines.class.gui.element)
local defines = ritnlib.defines.menu.names

local function getElement(gui_name)
    return {
        button = {
            menu = libGuiElement(gui_name,"sprite-button","menu"):spritePath(defines.sprite.button_menu):style(defines.styles.button_menu):get(),
        }
    }
end


local function getContent()
    return {
        button = {
            menu = {
                "button-menu"
            },
        },
    }
end

-----------------------------------------
return {
    getElement = getElement,
    getContent = getContent,
}
