# Create booth
# awning
fill ~ ~2 ~ ~2 ~2 ~-3 birch_slab[type=top]
fill ~ ~1 ~ ~2 ~1 ~-3 air
fill ~1 ~ ~-1 ~1 ~2 ~-2 air
setblock ~ ~2 ~ stripped_birch_log[axis=x]
setblock ~ ~2 ~-3 stripped_birch_log[axis=x]
setblock ~2 ~2 ~ stripped_birch_log[axis=x]
setblock ~2 ~2 ~-3 stripped_birch_log[axis=x]
# counters
setblock ~ ~ ~-1 birch_stairs[facing=south,half=top]
setblock ~ ~ ~-2 birch_stairs[facing=north,half=top]
setblock ~2 ~ ~-1 birch_stairs[facing=south,half=top]
setblock ~2 ~ ~-2 birch_stairs[facing=north,half=top]
# supports & sides
fill ~ ~ ~ ~ ~1 ~ birch_fence
fill ~ ~ ~-3 ~ ~1 ~-3 birch_fence
fill ~2 ~ ~ ~2 ~1 ~ birch_fence
fill ~2 ~ ~-3 ~2 ~1 ~-3 birch_fence
setblock ~1 ~ ~ birch_fence
setblock ~1 ~ ~-3 birch_fence
