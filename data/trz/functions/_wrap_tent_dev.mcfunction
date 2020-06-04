# ~ ~ ~ should be the south-west (diagnol)
#       from the south-east corner of the
execute positioned ~ ~ ~ run kill @e[distance=..5,type=item,nbt={Item:{id:"minecraft:stone_button"}}]
setblock ~0 ~-2 ~-1 sandstone
setblock ~0 ~-1 ~-1 sand
setblock ~1 ~-2 ~0 sandstone
setblock ~1 ~-1 ~0 sand
function trz:debug_off
gamemode survival @p
