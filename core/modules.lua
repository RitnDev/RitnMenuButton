local modules = {}
------------------------------------------------------------------------------
-- Inclus les events onInit et onLoad + les ajouts de commandes
modules.storage =                require(ritnlib.defines.menu.modules.storage)
--modules.events =                require(ritnlib.defines.menu.modules.events)

---- Modules désactivable
modules.player =                require(ritnlib.defines.menu.modules.player) 
------------------------------------------------------------------------------
return modules