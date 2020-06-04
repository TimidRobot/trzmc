# ~0 ~0 ~0 should be the south-west (diagonal)
#          from the south-east corner of the build area

execute positioned ~ ~ ~ run kill @e[distance=..3,type=item,nbt={Item:{id:"minecraft:stone_button"}}]

## build
setblock ~0 ~-2 ~-1 command_block{Command:"execute positioned ~1 ~1 ~-1 run function trz:tent/build",TrackOutput:0}
setblock ~0 ~-1 ~-1 bricks
setblock ~0 ~0 ~-1 stone_button[face=floor]

## reload
setblock ~1 ~-2 ~0 command_block{Command:"function trz:debug_on",TrackOutput:0}
setblock ~1 ~-1 ~0 chiseled_quartz_block
setblock ~1 ~0 ~0 stone_button[face=floor]

gamemode creative @p
