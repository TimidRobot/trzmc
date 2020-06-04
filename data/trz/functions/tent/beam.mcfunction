# Create oak_log supporting beam down length (north/south) of tent
# with hanging lanterns
# with oak_stairs end caps
fill ~0 ~0 ~-1 ~0 ~0 ~-17 oak_log[axis=z]
execute if block ~0 ~-1 ~-1 air run setblock ~0 ~-1 ~-1 lantern[hanging=true]
execute if block ~0 ~-1 ~-17 air run setblock ~0 ~-1 ~-17 lantern[hanging=true]
setblock ~0 ~0 ~0 oak_stairs[facing=north,half=top]
setblock ~0 ~0 ~-18 oak_stairs[facing=south,half=top]
