local libGuiElement = require(ritnlib.defines.class.gui.element)


local element = {
    flow = {
        main = libGuiElement("common","flow","main"):vertical():get(),
        menu = libGuiElement("common","flow","menu"):horizontal():get(),
    }
}

local content = {
    flow = {
        main = {"flow-main"},
        menu = {
            "flow-main",
            "flow-menu"
        },
    }
}

local elements = {
    {
        parent = "start",
        name = "main",
        gui = element.flow.main
    },
    {
        parent = "main",
        name = "menu",
        gui = element.flow.menu
    }
}

-----------------------------------------
return {
    elements = elements,
    content = content,
}
