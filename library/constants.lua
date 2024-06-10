local M = {}

M.tiles = {}

M.tiles.WATER_TILE = 1
M.tiles.LAND_TILE = 2
M.tiles.UNFERTILE_FARMLAND_TILE = 3
M.tiles.MIDFERTILE_FARMLAND_TILE = 4
M.tiles.FERTILE_FARMLAND_TILE = 5
M.tiles.WHEAT_MIN_TILE = 6
M.tiles.WHEAT_MAX_TILE = 10

M.layers = {}

M.layers.GROUND = "ground"
M.layers.CROPS = "crops"

M.input = {}

M.input.NEW_WORLD = hash("new_world")
M.input.CAMERA_PAN = hash("camera_pan")
M.input.CAMERA_ZOOM_IN = hash("camera_zoom_in")
M.input.CAMERA_ZOOM_OUT = hash("camera_zoom_out")
M.input.TILL_LAND = hash("till_land")
M.input.PLANT_OR_DESTROY_CROP = hash("plant_or_destroy_crop")
M.input.SELL_CROPS = hash("sell_crops")
M.input.BUY_SEEDS = hash("buy_seeds")

M.messages = {}

M.messages.HARVEST_CROP = hash("harvest_crop")
M.messages.SELL_CROPS = hash("sell_crops")
M.messages.BUY_SEEDS = hash("buy_seeds")

return M