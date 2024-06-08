local M = {}

M.tiles = {}

M.tiles.WATER_TILE = 1
M.tiles.LAND_TILE = 2
M.tiles.UNFERTILE_FARMLAND_TILE = 3
M.tiles.MIDFERTILE_FARMLAND_TILE = 4
M.tiles.FERTILE_FARMLAND_TILE = 5

M.layers = {}

M.layers.GROUND = "ground"

M.input = {}

M.input.NEW_WORLD = hash("new_world")
M.input.CAMERA_PAN = hash("camera_pan")
M.input.CAMERA_ZOOM_IN = hash("camera_zoom_in")
M.input.CAMERA_ZOOM_OUT = hash("camera_zoom_out")
M.input.TILL_LAND = hash("till_land")

return M