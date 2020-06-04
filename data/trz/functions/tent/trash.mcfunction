# Interior: Trash
setblock ~1 ~-2 ~0 command_block{Command:"execute positioned ~-1 ~2 ~0 run function trz:tent/empty_trash",TrackOutput:0}
setblock ~0 ~0 ~0 barrel[facing=up]{CustomName:"\"§lTrash§r  §c§oitems will be destroyed\""}
setblock ~1 ~0 ~0 spruce_pressure_plate
execute positioned ~0 ~1 ~0 run kill @e[distance=..2,type=item,nbt={Item:{id:"minecraft:spruce_sign"}}]
setblock ~0 ~1 ~0 spruce_wall_sign[facing=east]{Text2:"\"§8§lTrash\""}
