# vim: ft=conf:
# caret: -left/+right -down/+up -back/+forward (but depends on looking)
# tilde: -west/+east -down/+up -south/+north
function trz:debug_on
gamerule commandBlockOutput false

# clean-up: villager & item frame
function trz:toolsmith_cleanup
# clean-up: buttons
fill ~2 ~ ~ ~-2 ~ ~ air replace

## floor
fill ~2 ~-1 ~1 ~-2 ~-1 ~3 smooth_stone replace
## counter
#fill ~2 ~ ~1 ~-2 ~ ~3 dark_oak_planks replace
# counter: front (north)
setblock ~2 ~ ~1 dark_oak_planks replace
fill ~1 ~ ~1 ~-1 ~ ~1 dark_oak_slab[type=top] replace
setblock ~-2 ~ ~1 dark_oak_planks replace
# counter: back (south)
setblock ~2 ~ ~3 dark_oak_stairs[facing=south,half=top] replace
fill ~1 ~ ~3 ~-1 ~ ~3 dark_oak_slab[type=top] replace
setblock ~-2 ~ ~3 dark_oak_stairs[facing=south,half=top] replace
# counter: left (east)
setblock ~2 ~ ~2 dark_oak_slab[type=top] replace
# counter: right (west)
setblock ~-2 ~ ~2 dark_oak_slab[type=top] replace
# inside counter
fill ~1 ~ ~2 ~-1 ~ ~2 air replace
# empty space
fill ~2 ~1 ~1 ~-2 ~1 ~3 air replace
setblock ~2 ~1 ~1 dark_oak_fence replace
setblock ~-2 ~1 ~1 dark_oak_fence replace
setblock ~2 ~1 ~3 dark_oak_fence replace
setblock ~-2 ~1 ~3 dark_oak_fence replace
# top
fill ~2 ~2 ~1 ~-2 ~2 ~3 dark_oak_slab[type=top] replace
setblock ~2 ~2 ~1 dark_oak_planks replace
setblock ~-2 ~2 ~1 dark_oak_planks replace
setblock ~2 ~2 ~3 dark_oak_planks replace
setblock ~-2 ~2 ~3 dark_oak_planks replace
# top: inside
fill ~1 ~2 ~2 ~-1 ~2 ~2 air replace

# Button: Summon
setblock ~-2 ~-1 ~1 command_block{Command:"function trz:toolsmith_button",TrackOutput:0} replace
setblock ~-2 ~ ~ stone_button[facing=north,face=wall] replace
data get block ~-2 ~ ~

# Button: reload
setblock ~2 ~-1 ~1 command_block{Command:"function trz:debug_on",TrackOutput:0} replace
setblock ~2 ~ ~ stone_button[facing=north,face=wall] replace

# Summon
execute positioned ~-2 ~-1 ~1 run function trz:toolsmith_summon
