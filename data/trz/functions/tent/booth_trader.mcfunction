# Booth: bottom
setblock ~0 ~0 ~0 acacia_stairs[facing=west,half=top]
fill ~1 ~0 ~0 ~2 ~0 ~0 acacia_slab[type=top]
setblock ~3 ~0 ~0 acacia_stairs[facing=east,half=top]
setblock ~0 ~1 ~0 acacia_fence
setblock ~3 ~1 ~0 acacia_fence

# Booth: top
fill ~0 ~2 ~0 ~3 ~2 ~-1 acacia_slab[type=top]
#fill ~0 ~3 ~0 ~3 ~3 ~-1 blue_carpet
fill ~1 ~2 ~-1 ~2 ~2 ~-1 air
setblock ~0 ~2 ~0 stripped_acacia_log[axis=z]
setblock ~3 ~2 ~0 stripped_acacia_log[axis=z]
execute positioned ~1 ~2 ~-1 run kill @e[distance=..3,type=item,nbt={Item:{id:"minecraft:blue_carpet"}}]
fill ~0 ~3 ~0 ~3 ~3 ~0 blue_carpet
setblock ~0 ~3 ~-1 blue_carpet
setblock ~3 ~3 ~-1 blue_carpet

# Decorations
fill ~1 ~-1 ~1 ~2 ~-1 ~-1 blue_wool
setblock ~0 ~0 ~-1 chest[facing=east]{Lock:lockedandempty,CustomName:"\"§1Meirtash§r: You'll lose your hand if you keep that up!§7 - Chest\""}
setblock ~3 ~0 ~-1 emerald_block
#setblock ~2 ~3 ~-1 end_rod
setblock ~4 ~0 ~-1 redstone_block
setblock ~4 ~0 ~ diamond_block
setblock ~4 ~1 ~-1 redstone_lamp
setblock ~4 ~2 ~-1 gold_block

# Guard dog
execute positioned ~4 ~0 ~1 run tp @e[distance=..3,type=wolf,tag=TrzTentTrader] ~0 -10 ~0
summon wolf ~4 ~-0.5 ~1 {CustomName:"\"doggo\"",NoAI:1,Sitting:1,CollarColor:11,PersistenceRequired:1,Rotation:[70f,0f],Tags:["TrzTentTrader"]}

# Back Banners
execute positioned ~1 ~1 ~-1 run kill @e[distance=..3,type=item,nbt={Item:{id:"minecraft:blue_banner"}}]
setblock ~1 ~2 ~-1 blue_wall_banner[facing=south]
setblock ~2 ~2 ~-1 blue_wall_banner[facing=south]

## Painting
#execute positioned ~1 ~1 ~-1 run kill @e[distance=..3,type=painting,tag=TrzTentEggmonger]
#summon painting ~1 ~1 ~-1 {Invulnerable:1b,Facing:0,Motive:courbet,Tags:["TrzTentEggmonger"]}

# Sign
execute positioned ~0 ~2 ~1 run kill @e[distance=..3,type=item,nbt={Item:{id:"minecraft:acacia_sign"}}]
setblock ~0 ~2 ~1 acacia_wall_sign[facing=south]{Text1:"{\"text\":\"Meirtash\",\"color\":\"dark_blue\"}",Text2:"{\"text\":\"Calawa\",\"color\":\"dark_blue\"}",Text3:"{\"text\":\"§oquick and easy\",\"color\":\"dark_purple\"}",Text4:"{\"text\":\"§oemeralds!\",\"color\":\"dark_purple\"}"}

# Item Frame Sign on awning
# remove attached preious item_frame
execute positioned ~3 ~2 ~1 run kill @e[distance=..3,type=item_frame,tag=TrzTentTrader]
# remove "popped" loot previous item_frame
execute positioned ~3 ~2 ~1 run kill @e[distance=..3,type=item,nbt={Item:{id:"minecraft:item_frame"}}]
summon item_frame ~3 ~2 ~1 {Invulnerable:1b,Facing:3,ItemDropChance:0.0,Item:{id:emerald,Count:1},Tags:["TrzTentTrader"]}

# Item Frame Sign on tent
# remove attached previous item_frame
execute positioned ~1 ~4 ~-1 run kill @e[distance=..3,type=item_frame,tag=TrzTentTrader]
# remove "popped" loot previous item_frame
execute positioned ~1 ~4 ~-1 run kill @e[distance=..3,type=item,nbt={Item:{id:"minecraft:item_frame"}}]
summon item_frame ~1 ~4 ~-1 {Invulnerable:1b,Facing:3,ItemDropChance:0.0,Item:{id:emerald,Count:1},Tags:["TrzTentTrader"]}

# Wandering Trader
execute positioned ~1 ~0 ~-1 run tp @e[distance=..3,type=wandering_trader,tag=TrzTentTrader] ~0 -10 ~0
summon wandering_trader ~1 ~0.5 ~-1 {CustomName:"\"Meirtash Calawa\"",CustomNameVisible:0,PersistenceRequired:1,Offers:{Recipes:[{rewardExp:0,maxUses:999,buy:{id:stick,Count:48},sell:{id:emerald,Count:1},xp:0},{rewardExp:0,maxUses:999,buy:{id:oak_log,Count:4},sell:{id:emerald,Count:1},xp:0},{rewardExp:0,maxUses:999,buy:{id:birch_log,Count:4},sell:{id:emerald,Count:1},xp:0},{rewardExp:0,maxUses:999,buy:{id:spruce_log,Count:4},sell:{id:emerald,Count:1},xp:0},{rewardExp:0,maxUses:999,buy:{id:jungle_log,Count:4},sell:{id:emerald,Count:1},xp:0},{rewardExp:0,maxUses:999,buy:{id:acacia_log,Count:4},sell:{id:emerald,Count:1},xp:0},{rewardExp:0,maxUses:999,buy:{id:dark_oak_log,Count:4},sell:{id:emerald,Count:1},xp:0},{rewardExp:0,maxUses:999,buy:{id:charcoal,Count:32},sell:{id:emerald,Count:5},xp:0},{rewardExp:0,maxUses:999,buy:{id:smooth_stone,Count:16},sell:{id:emerald,Count:3},xp:0},{rewardExp:0,maxUses:999,buy:{id:book,Count:5},sell:{id:emerald,Count:1},xp:0},{rewardExp:0,maxUses:999,buy:{id:bone_meal,Count:4},sell:{id:emerald,Count:1},xp:0},{rewardExp:0,maxUses:999,buy:{id:rotten_flesh,Count:34},sell:{id:emerald,Count:1},xp:0},{rewardExp:0,maxUses:999,buy:{id:bread,Count:7},sell:{id:emerald,Count:1},xp:0},{rewardExp:0,maxUses:999,buy:{id:beetroot_soup,Count:2},sell:{id:emerald,Count:1},xp:0},{rewardExp:0,maxUses:999,buy:{id:mushroom_stew,Count:2},sell:{id:emerald,Count:1},xp:0},{rewardExp:0,maxUses:999,buy:{id:rabbit_stew,Count:1},sell:{id:emerald,Count:1},xp:0},{rewardExp:0,maxUses:999,buy:{id:cookie,Count:32},sell:{id:emerald,Count:1},xp:0},{rewardExp:0,maxUses:999,buy:{id:pumpkin_pie,Count:4},sell:{id:emerald,Count:1},xp:0},{rewardExp:0,maxUses:999,buy:{id:cake,Count:1},sell:{id:emerald,Count:1},xp:0},{rewardExp:0,maxUses:999,buy:{id:leather,Count:16},sell:{id:saddle,Count:1},xp:0},{rewardExp:0,maxUses:999,buy:{id:white_wool,Count:2},sell:{id:string,Count:4},xp:0}]},Tags:["TrzTentTrader"]}
