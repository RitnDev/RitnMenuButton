-----------------------------------------
--               DEFINES               --
-----------------------------------------
if not ritnlib then require("__RitnCoreGame__.core.defines") end
local name = "RitnMenuButton"
local dir = "__".. name .."__"
local directory = dir .. "."


local defines = {}

-- Mod ID.
defines.name = name
-- Path to the mod's directory.
defines.directory = dir

-- classes
defines.class = {
    guiButtonMenu = dir .. ".classes.RitnGuiMenuButton",
    guiCommon = dir .. ".classes.RitnGuiCommon",
}

-- setup-classes
defines.setup = dir .. ".core.setup-classes"



-- Modules
defines.modules = {
    core = dir .. ".core.modules",
    globals = dir .. ".modules.globals",
    events = dir .. ".modules.events",
    ----
    player = dir .. ".modules.player",
    ----
}


-- graphics (gui)
local graphics = dir .. "/graphics/"
local gui = graphics .. "gui/"
defines.graphics = {
    gui = {
        button_menu = gui .. "button-main-menu.png",
    },
}

defines.gui_actions = {
    menu = {
        active = "button-menu",
    }
}

-- Gui
defines.gui = {}
defines.gui.styles = directory .. "prototypes.styles"
local dir_gui = directory .. "gui."
---------------------------
defines.gui.common = dir_gui .. "common"
defines.gui.menu = dir_gui .. "menu"
---------------------------


-- prototypes
local dir_proto = directory .. "prototypes."
defines.prototypes = {
    styles = dir_proto .. "styles",
    customInputs = dir_proto .. "custom-inputs",
}


-- Prefix
defines.prefix = {
    name = "ritnmods-",
    mod = "menu-",
    gui = "ritn-",
}


--settings 
local settings_prefix = defines.prefix.name .. defines.prefix.mod
defines.settings = {
    enable_main_button = {
        name = settings_prefix .. "enable-main-button",
        value = true,
    }
}


-- Name and value
defines.names = {
    
    customInput = {
        toggle_main_menu = defines.prefix.name .. "toggle-main-menu",
    },

    --GUI STYLES
    styles = {
        button_menu = "style_button_menu_ritn",
    },

    sprite = {
        button_menu = "sprite_button_menu"
    },

    --GUI CAPTION
    caption = {
        frame_menu = {
            titre = {"frame-menu.titre"},
            label_admin = {"frame-menu.label-admin"},
        }
    }
}

----------------
ritnlib.defines.menu = defines