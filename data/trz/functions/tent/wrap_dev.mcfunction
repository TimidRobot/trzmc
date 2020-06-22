# ~0 ~0 ~0 should be south-west (diagonal)
#          from the south-west corner of the build area

# clean-up buttons
fill ~0 ~0 ~0 ~1 ~0 ~-1 air
execute positioned ~ ~ ~ run kill @e[distance=..5,type=item,nbt={Item:{id:"minecraft:stone_button"}}]

# replace command blocks with sand and sandstone
setblock ~0 ~-2 ~-1 sandstone
setblock ~0 ~-1 ~-1 sand
setblock ~1 ~-2 ~0 sandstone
setblock ~1 ~-1 ~0 sand

# disable dev
function trz:dev_disable
