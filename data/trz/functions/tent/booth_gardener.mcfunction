# Booth
fill ~0 ~2 ~0 ~2 ~2 ~-3 jungle_slab[type=top]
fill ~0 ~0 ~0 ~0 ~1 ~0 jungle_fence
fill ~0 ~0 ~-3 ~0 ~1 ~-3 jungle_fence
fill ~1 ~2 ~-1 ~1 ~2 ~-2 barrier
setblock ~0 ~2 ~0 jungle_log[axis=x]
setblock ~0 ~2 ~-3 jungle_log[axis=x]
#fill ~0 ~0 ~-1 ~0 ~0 ~-2 jungle_slab

# Decorations
fill ~-1 ~-1 ~-1 ~-1 ~-1 ~-2 green_wool
fill ~0 ~-1 ~0 ~2 ~-1 ~-3 podzol
fill ~0 ~2 ~1 ~0 ~0 ~1 vine[north=true]
setblock ~1 ~0 ~-3 chest[facing=south]{Lock:lockedandempty,CustomName:"\"§2Genofeva§r: Rot off!§7§o - Chest\""}
setblock ~1 ~1 ~0 barrier
setblock ~1 ~0 ~0 barrier
setblock ~1 ~0 ~0 potted_lily_of_the_valley
setblock ~1 ~0 ~-4 potted_red_mushroom
setblock ~1 ~0 ~1 potted_brown_mushroom

# ROYGBV Flowers
fill ~2 ~-1 ~-4 ~2 ~-1 ~1 podzol
execute positioned ~2 ~0 ~-4 run kill @e[distance=..3,type=item,nbt={Item:{id:"minecraft:rose_bush"}}]
setblock ~2 ~0 ~-4 rose_bush[half=lower]
setblock ~2 ~1 ~-4 rose_bush[half=upper]
setblock ~2 ~0 ~-3 acacia_log[axis=y]
setblock ~2 ~1 ~-3 potted_orange_tulip
setblock ~2 ~0 ~-2 mossy_cobblestone
setblock ~2 ~1 ~-2 potted_dandelion
setblock ~2 ~-1 ~-2 water
setblock ~2 ~-1 ~-1 sand
setblock ~2 ~0 ~-1 sugar_cane
setblock ~2 ~1 ~-1 sugar_cane
setblock ~2 ~0 ~0 mossy_stone_bricks
setblock ~2 ~1 ~0 potted_blue_orchid
execute positioned ~2 ~0 ~1 run kill @e[distance=..3,type=item,nbt={Item:{id:"minecraft:lilac"}}]
setblock ~2 ~0 ~1 lilac[half=lower]
setblock ~2 ~1 ~1 lilac[half=upper]

# Trees on Booth
setblock ~0 ~3 ~-3 potted_spruce_sapling
setblock ~0 ~3 ~-2 potted_acacia_sapling
setblock ~0 ~3 ~-1 potted_jungle_sapling
setblock ~0 ~3 ~0 potted_dark_oak_sapling
setblock ~1 ~3 ~0 potted_oak_sapling
setblock ~1 ~3 ~-3 potted_birch_sapling

# Back Banners
execute positioned ~2 ~1 ~-1 run kill @e[distance=..3,type=item,nbt={Item:{id:"minecraft:green_banner"}}]
setblock ~2 ~2 ~-1 green_wall_banner[facing=west]
setblock ~2 ~2 ~-2 green_wall_banner[facing=west]

# Sign
execute positioned ~-1 ~2 ~-3 run kill @e[distance=..3,type=item,nbt={Item:{id:"minecraft:spruce_sign"}}]
setblock ~-1 ~2 ~-3 spruce_wall_sign[facing=west]{Text1:"{\"text\":\"Genofeva\",\"color\":\"dark_green\"}",Text2:"{\"text\":\"Bottomhill\",\"color\":\"dark_green\"}",Text3:"{\"text\":\"§oput down roots\",\"color\":\"dark_purple\"}",Text4:"{\"text\":\"§oand grow\",\"color\":\"dark_purple\"}"}

# Item Frame Sign
# remove attached previous item_frame
execute positioned ~-1 ~2 ~0 run kill @e[distance=..3,type=item_frame,tag=TrzTentGardener]
# remove "popped" loot previous item_frame
execute positioned ~-1 ~2 ~0 run kill @e[distance=..3,type=item,nbt={Item:{id:"minecraft:item_frame"}}]
summon item_frame ~-1 ~2 ~0 {Invulnerable:1b,Facing:4,ItemDropChance:0.0,Item:{id:fern,Count:1},Tags:["TrzTentGardener"]}

# Gardener Villager
execute positioned ~1 ~0 ~-1 run tp @e[distance=..3,type=villager,tag=TrzTentGardener] ~0 -10 ~0
summon villager ~1 ~-0.5 ~-1 {CustomName:"\"Genofeva Bottomhill\"",CustomNameVisible:0,PersistenceRequired:1,VillagerData:{level:5,profession:farmer,type:swamp},Offers:{Recipes:[{rewardExp:0,maxUses:99,buy:{id:emerald,Count:1},sell:{id:wheat_seeds,Count:1},xp:0},{rewardExp:0,maxUses:99,buy:{id:emerald,Count:1},sell:{id:melon_seeds,Count:1},xp:0},{rewardExp:0,maxUses:99,buy:{id:emerald,Count:1},sell:{id:pumpkin_seeds,Count:1},xp:0},{rewardExp:0,maxUses:99,buy:{id:emerald,Count:1},sell:{id:beetroot_seeds,Count:1},xp:0},{rewardExp:0,maxUses:99,buy:{id:emerald,Count:1},sell:{id:carrot,Count:1},xp:0},{rewardExp:0,maxUses:99,buy:{id:emerald,Count:1},sell:{id:potato,Count:1},xp:0},{rewardExp:0,maxUses:99,buy:{id:emerald,Count:1},sell:{id:sweet_berries,Count:1},xp:0},{rewardExp:0,maxUses:99,buy:{id:emerald,Count:1},sell:{id:cocoa_beans,Count:1},xp:0},{rewardExp:0,maxUses:99,buy:{id:emerald,Count:5},sell:{id:oak_sapling,Count:1},xp:0},{rewardExp:0,maxUses:99,buy:{id:emerald,Count:5},sell:{id:birch_sapling,Count:1},xp:0},{rewardExp:0,maxUses:99,buy:{id:emerald,Count:5},sell:{id:spruce_sapling,Count:1},xp:0},{rewardExp:0,maxUses:99,buy:{id:emerald,Count:5},sell:{id:jungle_sapling,Count:1},xp:0},{rewardExp:0,maxUses:99,buy:{id:emerald,Count:5},sell:{id:acacia_sapling,Count:1},xp:0},{rewardExp:0,maxUses:99,buy:{id:emerald,Count:5},sell:{id:dark_oak_sapling,Count:1},xp:0},{rewardExp:0,maxUses:99,buy:{id:emerald,Count:3},sell:{id:cactus,Count:1},xp:0},{rewardExp:0,maxUses:99,buy:{id:emerald,Count:1},sell:{id:lily_pad,Count:2},xp:0},{rewardExp:0,maxUses:99,buy:{id:emerald,Count:1},sell:{id:bamboo,Count:1},xp:0},{rewardExp:0,maxUses:99,buy:{id:emerald,Count:1},sell:{id:sugar_cane,Count:1},xp:0},{rewardExp:0,maxUses:99,buy:{id:emerald,Count:1},sell:{id:vine,Count:1},xp:0},{rewardExp:0,maxUses:99,buy:{id:emerald,Count:3},sell:{id:kelp,Count:1},xp:0},{rewardExp:0,maxUses:99,buy:{id:emerald,Count:1},sell:{id:brown_mushroom,Count:1},xp:0},{rewardExp:0,maxUses:99,buy:{id:emerald,Count:1},sell:{id:red_mushroom,Count:1},xp:0},{rewardExp:0,maxUses:99,buy:{id:emerald,Count:1},sell:{id:allium,Count:1},xp:0},{rewardExp:0,maxUses:99,buy:{id:emerald,Count:1},sell:{id:azure_bluet,Count:1},xp:0},{rewardExp:0,maxUses:99,buy:{id:emerald,Count:1},sell:{id:cornflower,Count:1},xp:0},{rewardExp:0,maxUses:99,buy:{id:emerald,Count:1},sell:{id:dandelion,Count:1},xp:0},{rewardExp:0,maxUses:99,buy:{id:emerald,Count:1},sell:{id:lilac,Count:1},xp:0},{rewardExp:0,maxUses:99,buy:{id:emerald,Count:1},sell:{id:lily_of_the_valley,Count:1},xp:0},{rewardExp:0,maxUses:99,buy:{id:emerald,Count:1},sell:{id:oxeye_daisy,Count:1},xp:0},{rewardExp:0,maxUses:99,buy:{id:emerald,Count:1},sell:{id:peony,Count:1},xp:0},{rewardExp:0,maxUses:99,buy:{id:emerald,Count:1},sell:{id:poppy,Count:1},xp:0},{rewardExp:0,maxUses:99,buy:{id:emerald,Count:1},sell:{id:rose_bush,Count:1},xp:0},{rewardExp:0,maxUses:99,buy:{id:emerald,Count:1},sell:{id:sunflower,Count:1},xp:0},{rewardExp:0,maxUses:99,buy:{id:emerald,Count:1},sell:{id:orange_tulip,Count:1},xp:0},{rewardExp:0,maxUses:99,buy:{id:emerald,Count:1},sell:{id:red_tulip,Count:1},xp:0},{rewardExp:0,maxUses:99,buy:{id:emerald,Count:1},sell:{id:pink_tulip,Count:1},xp:0},{rewardExp:0,maxUses:99,buy:{id:emerald,Count:1},sell:{id:white_tulip,Count:1},xp:0}]},Attributes:[{Base:0.0,Name:"generic.movementSpeed"}],Tags:["TrzTentGardener"]}
