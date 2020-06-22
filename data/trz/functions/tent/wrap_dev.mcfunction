# ~0 ~0 ~0 should be the south-west (diagonal)
#          from the south-east corner of the build area
fill ~0 ~0 ~0 ~1 ~0 ~-1 air
execute positioned ~ ~ ~ run kill @e[distance=..5,type=item,nbt={Item:{id:"minecraft:stone_button"}}]
setblock ~0 ~-2 ~-1 sandstone
setblock ~0 ~-1 ~-1 sand
setblock ~1 ~-2 ~0 sandstone
setblock ~1 ~-1 ~0 sand
function trz:dev_disable
