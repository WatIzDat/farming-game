require("library.perlin")
local constants = require("library.constants")

local M = {}

M.HEIGHT = 64
M.WIDTH = 64

function M:generate_world(x_offset, y_offset)
	x_offset = x_offset or 0
	y_offset = y_offset or 0
	
	local output = {}
	
	local value = {}

	local seed_octave1 = rnd.number()
	local seed_octave2 = rnd.number()
	local seed_octave3 = rnd.number()

	for x = 1 + x_offset, M.WIDTH do
		output[x] = {}
		value[x] = {}

		for y = 1 + y_offset, M.HEIGHT do
			--     this value is like a "smoothness" value (lower = more smooth)
			--                      V
			local nx = x / (M.WIDTH / 1.4)
			local ny = y / (M.HEIGHT / 1.4)

			local elevation = 1 * ((perlin:noise(1 * nx, 1 * ny, seed_octave1) + 1) / 2)
			+ 0.5 * ((perlin:noise(2 * nx, 2 * ny, seed_octave2) + 1) / 2)
			+ 0.25 * ((perlin:noise(4 * nx, 4 * ny, seed_octave3) + 1) / 2)

			elevation = elevation / (1 + 0.5 + 0.25)

			value[x][y] = (elevation * 1.2) ^ 1.35

			if value[x][y] < 0.43 then
				output[x][y] = constants.tiles.WATER_TILE
			else
				output[x][y] = constants.tiles.LAND_TILE
			end
		end
	end

	return output
end

return M