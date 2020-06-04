# Create booth
# awning
fill ~ ~2 ~ ~3 ~2 ~-1 birch_slab[type=top]
fill ~ ~1 ~ ~3 ~1 ~-1 air
fill ~1 ~ ~-1 ~2 ~2 ~-1 air
setblock ~ ~2 ~ stripped_birch_log[axis=z]
setblock ~3 ~2 ~ stripped_birch_log[axis=z]
# counter
setblock ~1 ~ ~ birch_stairs[facing=west,half=top]
setblock ~2 ~ ~ birch_stairs[facing=east,half=top]
# supports & sides
fill ~ ~ ~ ~ ~1 ~ birch_fence
fill ~3 ~ ~ ~3 ~1 ~ birch_fence
setblock ~ ~ ~-1 birch_fence
setblock ~3 ~ ~-1 birch_fence
