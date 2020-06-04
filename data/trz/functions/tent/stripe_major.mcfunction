# Create magenta_wool/magenta_carpet major tent stripe
# from west (left) to east (right)
#
# Major tent stripe is designed to look like it has been secured to beams
#
# magenta_carpet is killed prior to being placed as trz:tent_build clears space
# and previously placed carpet "pop" and become loot items
setblock ~0 ~0 ~0 magenta_wool
execute positioned ~1 ~1 ~0 run kill @e[distance=..2,type=item,nbt={Item:{id:"minecraft:magenta_carpet"}}]
setblock ~1 ~1 ~0 magenta_carpet
fill ~2 ~0 ~0 ~2 ~3 ~0 magenta_wool
execute positioned ~3 ~4 ~0 run kill @e[distance=..2,type=item,nbt={Item:{id:"minecraft:magenta_carpet"}}]
setblock ~3 ~4 ~0 magenta_carpet
fill ~4 ~4 ~0 ~5 ~4 ~0 magenta_wool
fill ~6 ~5 ~0 ~10 ~5 ~0 magenta_wool
setblock ~7 ~6 ~0 magenta_wool
execute positioned ~8 ~7 ~0 run kill @e[distance=..2,type=item,nbt={Item:{id:"minecraft:magenta_carpet"}}]
setblock ~8 ~7 ~0 magenta_carpet
setblock ~9 ~6 ~0 magenta_wool
fill ~11 ~4 ~0 ~12 ~4 ~0 magenta_wool
execute positioned ~13 ~4 ~0 run kill @e[distance=..2,type=item,nbt={Item:{id:"minecraft:magenta_carpet"}}]
setblock ~13 ~4 ~0 magenta_carpet
fill ~14 ~0 ~0 ~14 ~3 ~0 magenta_wool
execute positioned ~15 ~1 ~0 run kill @e[distance=..2,type=item,nbt={Item:{id:"minecraft:magenta_carpet"}}]
setblock ~15 ~1 ~0 magenta_carpet
setblock ~16 ~0 ~0 magenta_wool
