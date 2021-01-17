# Create oak_log supporting beam down length (north/south) of tent
# with top lanterns to prevent spawns, decorative hanging lanterns, and
# decorative oak_stairs end caps
fill ~0 ~0 ~-1 ~0 ~0 ~-17 oak_log[axis=z]
execute positioned ~0 ~1 ~-5 run kill @e[distance=..3,type=item,nbt={Item:{id:"minecraft:lantern"}}]
execute positioned ~0 ~1 ~-9 run kill @e[distance=..3,type=item,nbt={Item:{id:"minecraft:lantern"}}]
execute positioned ~0 ~1 ~-13 run kill @e[distance=..3,type=item,nbt={Item:{id:"minecraft:lantern"}}]
setblock ~0 ~1 ~-5 lantern
setblock ~0 ~1 ~-9 lantern
setblock ~0 ~1 ~-13 lantern
execute if block ~0 ~-1 ~-1 air run setblock ~0 ~-1 ~-1 lantern[hanging=true]
execute if block ~0 ~-1 ~-17 air run setblock ~0 ~-1 ~-17 lantern[hanging=true]
setblock ~0 ~0 ~0 oak_stairs[facing=north,half=top]
setblock ~0 ~0 ~-18 oak_stairs[facing=south,half=top]
