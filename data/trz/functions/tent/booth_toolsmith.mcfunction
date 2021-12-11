# Booth: bottom
fill ~0 ~0 ~0 ~0 ~1 ~0 oak_fence
fill ~0 ~0 ~-3 ~0 ~1 ~-3 oak_fence
fill ~0 ~0 ~-1 ~0 ~0 ~-2 oak_slab

# Booth: top
fill ~0 ~2 ~0 ~2 ~2 ~-3 oak_slab[type=top]
fill ~2 ~1 ~-1 ~2 ~1 ~-2 barrier
fill ~1 ~2 ~-1 ~2 ~2 ~-2 barrier
setblock ~0 ~2 ~0 stripped_oak_log[axis=x]
setblock ~0 ~2 ~-3 stripped_oak_log[axis=x]
execute positioned ~1 ~2 ~-2 run kill @e[distance=..3,type=item,nbt={Item:{id:"minecraft:yellow_carpet"}}]
fill ~0 ~3 ~0 ~1 ~3 ~0 yellow_carpet
fill ~0 ~3 ~-3 ~1 ~3 ~-3 yellow_carpet
fill ~0 ~3 ~-1 ~0 ~3 ~-2 yellow_carpet

# Decorations
setblock ~2 ~0 ~0 water_cauldron[level=3]
fill ~1 ~-1 ~0 ~2 ~-1 ~-2 gravel
setblock ~2 ~0 ~-1 blast_furnace[facing=west,lit=true]
setblock ~1 ~0 ~0 anvil[facing=west]
setblock ~2 ~0 ~-2 smithing_table
fill ~-1 ~-1 ~-1 ~-1 ~-1 ~-2 yellow_wool
setblock ~1 ~0 ~-3 chest[facing=south,type=right]{Lock:lockedandempty,CustomName:"\"§eBrudwilda§r: Leave my stuff alone!§7§o - Chest\""}
setblock ~2 ~0 ~-3 chest[facing=south,type=left]{Lock:lockedandempty,CustomName:"\"§eBrudwilda§r: Leave my stuff alone!§7§o - Chest\""}

# Back Banners
execute positioned ~2 ~1 ~-1 run kill @e[distance=..3,type=item,nbt={Item:{id:"minecraft:yellow_banner"}}]
setblock ~2 ~2 ~-1 yellow_wall_banner[facing=west]
setblock ~2 ~2 ~-2 yellow_wall_banner[facing=west]

# Sign
execute positioned ~-1 ~2 ~-3 run kill @e[distance=..3,type=item,nbt={Item:{id:"minecraft:oak_sign"}}]
setblock ~-1 ~2 ~-3 oak_wall_sign[facing=west]{Text1:"{\"text\":\"Brudwilda\",\"color\":\"yellow\"}",Text2:"{\"text\":\"Kegaxe\",\"color\":\"yellow\"}",Text3:"{\"text\":\"§opurveyor of\",\"color\":\"dark_purple\"}",Text4:"{\"text\":\"§oquality tools\",\"color\":\"dark_purple\"}"}

# Item Frame Sign
# remove attached previous item_frame
execute positioned ~-1 ~2 ~0 run kill @e[distance=..3,type=item_frame,tag=TrzTentToolsmith]
# remove "popped" loot previous item_frame
execute positioned ~-1 ~2 ~0 run kill @e[distance=..3,type=item,nbt={Item:{id:"minecraft:item_frame"}}]
summon item_frame ~-1 ~2 ~0 {Invulnerable:1b,Facing:4,ItemDropChance:0.0,Item:{id:golden_pickaxe,Count:1},Tags:["TrzTentToolsmith"]}

# Toolsmith Villager
execute positioned ~1 ~0 ~-1 run tp @e[distance=..3,type=villager,tag=TrzTentToolsmith] ~0 -10 ~0
summon villager ~1 ~0.5 ~-1 {CustomName:"\"Brudwilda Kegaxe\"",CustomNameVisible:0,PersistenceRequired:1,VillagerData:{level:5,profession:toolsmith,type:jungle},Offers:{Recipes:[{rewardExp:0,maxUses:99,buy:{id:emerald,Count:2},sell:{id:compass,Count:1},xp:0},{rewardExp:0,maxUses:99,buy:{id:emerald,Count:36},sell:{id:diamond_pickaxe,Count:1,tag:{Enchantments:[{id:vanishing_curse,lvl:1},{id:efficiency,lvl:5},{id:fortune,lvl:3},{id:mending,lvl:1},{id:unbreaking,lvl:3}],display:{Name:"\"Wonder Pickaxe\""}}},xp:0},{rewardExp:0,maxUses:99,buy:{id:emerald,Count:24},sell:{id:diamond_shovel,Count:1,tag:{Enchantments:[{id:vanishing_curse,lvl:1},{id:efficiency,lvl:2},{id:fortune,lvl:3},{id:mending,lvl:1},{id:unbreaking,lvl:3}],display:{Name:"\"Wonder Shovel\""}}},xp:0},{rewardExp:0,maxUses:99,buy:{id:emerald,Count:36},sell:{id:diamond_axe,Count:1,tag:{Enchantments:[{id:vanishing_curse,lvl:1},{id:efficiency,lvl:4},{id:fortune,lvl:3},{id:mending,lvl:1},{id:unbreaking,lvl:3}],display:{Name:"\"Wonder Axe\""}}},xp:0},{rewardExp:0,maxUses:99,buy:{id:emerald,Count:24},sell:{id:diamond_hoe,Count:1,tag:{Enchantments:[{id:vanishing_curse,lvl:1},{id:efficiency,lvl:5},{id:fortune,lvl:3},{id:mending,lvl:1},{id:unbreaking,lvl:3}],display:{Name:"\"Wonder Hoe\""}}},xp:0},{rewardExp:0,maxUses:99,buy:{id:emerald,Count:40},sell:{id:golden_pickaxe,Count:1,tag:{Enchantments:[{id:vanishing_curse,lvl:1},{id:efficiency,lvl:5},{id:silk_touch,lvl:1}],Unbreakable:1b,display:{Name:"\"Silken Pickaxe\"",Lore:['{"text":"snow averse"}']}}},xp:0},{rewardExp:0,maxUses:99,buy:{id:emerald,Count:12},sell:{id:shears,Count:1,tag:{Enchantments:[{id:unbreaking,lvl:3},{id:vanishing_curse,lvl:1}],display:{Name:"\"Wonder Shears\""}}},xp:0},{rewardExp:0,maxUses:99,buy:{id:emerald,Count:4},sell:{id:clock,Count:1},xp:0},{rewardExp:0,maxUses:99,buy:{id:emerald,Count:4},sell:{id:flint_and_steel,Count:1,tag:{Enchantments:[{id:unbreaking,lvl:3},{id:vanishing_curse,lvl:1}],display:{Name:"\"Wonder Flint & Steel\""}}},xp:0},{rewardExp:0,maxUses:99,buy:{id:emerald,Count:5},sell:{id:lead,Count:1},xp:0}]},Tags:["TrzTentToolsmith"]}
