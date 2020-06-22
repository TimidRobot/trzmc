# Booth: bottom
setblock ~0 ~0 ~0 spruce_stairs[facing=west,half=top]
fill ~1 ~0 ~0 ~2 ~0 ~0 spruce_slab[type=top]
setblock ~3 ~0 ~0 spruce_stairs[facing=east,half=top]
setblock ~0 ~1 ~0 spruce_fence
setblock ~3 ~1 ~0 spruce_fence

# Booth: top
fill ~0 ~2 ~0 ~3 ~2 ~-1 spruce_slab[type=top]
fill ~1 ~2 ~-1 ~2 ~2 ~-1 air
setblock ~0 ~2 ~0 stripped_spruce_log[axis=z]
setblock ~3 ~2 ~0 stripped_spruce_log[axis=z]
execute positioned ~1 ~2 ~-1 run kill @e[distance=..3,type=item,nbt={Item:{id:"minecraft:light_gray_carpet"}}]
fill ~0 ~3 ~0 ~3 ~3 ~0 light_gray_carpet
setblock ~0 ~3 ~-1 light_gray_carpet
setblock ~3 ~3 ~-1 light_gray_carpet

# Decorations
fill ~1 ~-1 ~1 ~2 ~-1 ~-1 light_gray_wool
setblock ~0 ~0 ~-1 spruce_slab[type=top]
setblock ~0 ~1 ~-1 turtle_egg[eggs=4,hatch=0]
setblock ~3 ~0 ~-1 chest[facing=west]{Lock:lockedandempty,CustomName:"\"§7Skye§r: That is not yours!§7§o - Chest\""}
setblock ~-1 ~0 ~-1 cobweb

# Back Banners
execute positioned ~1 ~1 ~-1 run kill @e[distance=..3,type=item,nbt={Item:{id:"minecraft:light_gray_banner"}}]
setblock ~1 ~2 ~-1 light_gray_wall_banner[facing=south]
setblock ~2 ~2 ~-1 light_gray_wall_banner[facing=south]

# Sign
execute positioned ~3 ~2 ~1 run kill @e[distance=..3,type=item,nbt={Item:{id:"minecraft:spruce_sign"}}]
setblock ~3 ~2 ~1 spruce_wall_sign[facing=south]{Text1:"{\"text\":\"Skye\",\"color\":\"gray\"}",Text2:"{\"text\":\"Eggmonger\",\"color\":\"gray\"}",Text3:"{\"text\":\"§oshop local\",\"color\":\"dark_purple\"}",Text4:"{\"text\":\"§ocloaca-to-table\",\"color\":\"dark_purple\"}"}

# Item Frame Sign on awning
# remove attached previous item_frame
execute positioned ~0 ~2 ~1 run kill @e[distance=..3,type=item_frame,tag=TrzTentEggmonger]
# remove "popped" loot previous item_frame
execute positioned ~0 ~2 ~1 run kill @e[distance=..3,type=item,nbt={Item:{id:"minecraft:item_frame"}}]
summon item_frame ~0 ~2 ~1 {Invulnerable:1b,Facing:3,ItemDropChance:0.0,Item:{id:turtle_egg,Count:1},Tags:["TrzTentEggmonger"]}

# Item Frame Sign on tent
# remove attached previous item_frame
execute positioned ~2 ~4 ~-1 run kill @e[distance=..3,type=item_frame,tag=TrzTentEggmonger]
# remove "popped" loot previous item_frame
execute positioned ~2 ~4 ~-1 run kill @e[distance=..3,type=item,nbt={Item:{id:"minecraft:item_frame"}}]
summon item_frame ~2 ~4 ~-1 {Invulnerable:1b,Facing:3,ItemDropChance:0.0,Item:{id:turtle_egg,Count:1},Tags:["TrzTentEggmonger"]}

# Villager Eggmonger
execute positioned ~1 ~0 ~-1 run tp @e[distance=..3,type=villager,tag=TrzTentEggmonger] ~0 -10 ~0
summon villager ~1 ~-0.5 ~-1 {CustomName:"\"Skye Eggmonger\"",CustomNameVisible:0,PersistenceRequired:1,VillagerData:{level:5,profession:butcher,type:taiga},Offers:{Recipes:[{rewardExp:0,maxUses:99,buy:{id:emerald,Count:8},sell:{id:bee_spawn_egg,Count:1},xp:0},{rewardExp:0,maxUses:99,buy:{id:emerald,Count:16},sell:{id:chicken_spawn_egg,Count:1},xp:0},{rewardExp:0,maxUses:99,buy:{id:emerald,Count:24},sell:{id:cat_spawn_egg ,Count:1},xp:0},{rewardExp:0,maxUses:99,buy:{id:emerald,Count:16},sell:{id:cow_spawn_egg,Count:1},xp:0},{rewardExp:0,maxUses:99,buy:{id:emerald,Count:24},sell:{id:donkey_spawn_egg,Count:1},xp:0},{rewardExp:0,maxUses:99,buy:{id:emerald,Count:32},sell:{id:fox_spawn_egg,Count:1},xp:0},{rewardExp:0,maxUses:99,buy:{id:emerald,Count:24},sell:{id:horse_spawn_egg,Count:1},xp:0},{rewardExp:0,maxUses:99,buy:{id:emerald,Count:24},sell:{id:llama_spawn_egg,Count:1},xp:0},{rewardExp:0,maxUses:99,buy:{id:emerald,Count:56},sell:{id:mooshroom_spawn_egg,Count:1},xp:0},{rewardExp:0,maxUses:99,buy:{id:emerald,Count:24},sell:{id:mule_spawn_egg,Count:1},xp:0},{rewardExp:0,maxUses:99,buy:{id:emerald,Count:32},sell:{id:ocelot_spawn_egg,Count:1},xp:0},{rewardExp:0,maxUses:99,buy:{id:emerald,Count:32},sell:{id:panda_spawn_egg,Count:1},xp:0},{rewardExp:0,maxUses:99,buy:{id:emerald,Count:24},sell:{id:parrot_spawn_egg,Count:1},xp:0},{rewardExp:0,maxUses:99,buy:{id:emerald,Count:16},sell:{id:pig_spawn_egg,Count:1},xp:0},{rewardExp:0,maxUses:99,buy:{id:emerald,Count:32},sell:{id:polar_bear_spawn_egg,Count:1},xp:0},{rewardExp:0,maxUses:99,buy:{id:emerald,Count:16},sell:{id:rabbit_spawn_egg,Count:1},xp:0},{rewardExp:0,maxUses:99,buy:{id:emerald,Count:16},sell:{id:sheep_spawn_egg,Count:1},xp:0},{rewardExp:0,maxUses:99,buy:{id:emerald,Count:16},sell:{id:turtle_spawn_egg,Count:1},xp:0},{rewardExp:0,maxUses:99,buy:{id:emerald,Count:32},sell:{id:wolf_spawn_egg,Count:1},xp:0},{rewardExp:0,maxUses:99,buy:{id:emerald_block,Count:2},sell:{id:villager_spawn_egg,Count:1},xp:0}]},Tags:["TrzTentEggmonger"],Passengers:[{id:chicken,CustomName:"\"Skye Eggmonger\"",PersistenceRequired:1}]}
