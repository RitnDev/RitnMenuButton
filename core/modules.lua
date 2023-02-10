local modules = {}
------------------------------------------------------------------------------

-- Inclus les events onInit et onLoad + les ajouts de commandes
modules.events =                require(ritnlib.defines.menu.modules.events)
modules.interfaces =            require(ritnlib.defines.menu.modules.interfaces)

---- Modules désactivable

-- modules gui :
if global.menu.modules.player then
    modules.player =                require(ritnlib.defines.menu.modules.player) 
end
------------------------------------------------------------------------------
return modules