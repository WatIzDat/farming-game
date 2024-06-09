local constants = require("library.constants")

local M = {}

M.is_farmland = function(tile)
    return tile == constants.tiles.UNFERTILE_FARMLAND_TILE or
           tile == constants.tiles.MIDFERTILE_FARMLAND_TILE or
           tile == constants.tiles.FERTILE_FARMLAND_TILE 
end

return M