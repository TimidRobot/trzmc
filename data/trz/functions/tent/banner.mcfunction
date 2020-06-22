# Create decorated banner

# magenta_banner is killed prior to being placed as trz:tent_construct clears
# space and previously placed banners "pop" and become loot items
execute positioned ~0 ~0 ~0 run kill @e[distance=..3,type=item,nbt={Item:{id:"minecraft:magenta_banner"}}]

# wall banner facing 2 (north)
execute if score #Var banner_facing matches 2 run setblock ~0 ~0 ~0 magenta_wall_banner[facing=north]{Patterns:[{Color:0,Pattern:ss},{Color:3,Pattern:tts},{Color:5,Pattern:mr},{Color:4,Pattern:mc},{Color:12,Pattern:bts}]}

# wall banner facing 3 (south)
execute if score #Var banner_facing matches 3 run setblock ~0 ~0 ~0 magenta_wall_banner[facing=south]{Patterns:[{Color:0,Pattern:ss},{Color:3,Pattern:tts},{Color:5,Pattern:mr},{Color:4,Pattern:mc},{Color:12,Pattern:bts}]}

# floor banner rotation 1 (south-southwest)
execute if score #Var banner_rotation matches 1 run setblock ~0 ~0 ~0 magenta_banner[rotation=1]{Patterns:[{Color:0,Pattern:ss},{Color:3,Pattern:tts},{Color:5,Pattern:mr},{Color:4,Pattern:mc},{Color:12,Pattern:bts}]}

# floor banner rotation 15 (south-southeast)
execute if score #Var banner_rotation matches 15 run setblock ~0 ~0 ~0 magenta_banner[rotation=15]{Patterns:[{Color:0,Pattern:ss},{Color:3,Pattern:tts},{Color:5,Pattern:mr},{Color:4,Pattern:mc},{Color:12,Pattern:bts}]}
