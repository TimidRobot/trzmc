# Booth: bottom
fill ~2 ~0 ~0 ~2 ~1 ~0 dark_oak_fence
fill ~2 ~0 ~-3 ~2 ~1 ~-3 dark_oak_fence
fill ~2 ~0 ~-1 ~2 ~0 ~-2 dark_oak_slab

# Booth: top
fill ~1 ~2 ~0 ~2 ~3 ~-3 iron_bars[west=true,north=false,south=false]
fill ~0 ~2 ~0 ~1 ~2 ~-3 dark_oak_slab[type=top]
fill ~0 ~1 ~-1 ~0 ~1 ~-2 barrier
fill ~1 ~2 ~-1 ~1 ~2 ~-2 iron_trapdoor[facing=west,half=top]
setblock ~2 ~2 ~0 stripped_dark_oak_log[axis=x]
setblock ~2 ~2 ~-3 stripped_dark_oak_log[axis=x]
fill ~1 ~3 ~-1 ~1 ~3 ~-2 air

# Decorations
setblock ~0 ~0 ~0 cauldron[level=3]
fill ~0 ~-1 ~0 ~1 ~-1 ~-2 gravel
setblock ~0 ~0 ~-1 blast_furnace[facing=east,lit=true]
setblock ~0 ~0 ~-2 grindstone[facing=north,face=floor]
setblock ~1 ~0 ~0 anvil[facing=east]
setblock ~0 ~0 ~-3 fletching_table
setblock ~1 ~0 ~-3 chest[facing=south]{Lock:lockedandempty,CustomName:"\"§4Turfalda§r: I've killed others for less!§7§o - Chest\""}
fill ~3 ~-1 ~-1 ~3 ~-1 ~-2 red_wool

# Back Banners
execute positioned ~ ~1 ~-1 run kill @e[distance=..3,type=item,nbt={Item:{id:"minecraft:red_banner"}}]
setblock ~ ~2 ~-1 red_wall_banner[facing=east]
setblock ~ ~2 ~-2 red_wall_banner[facing=east]

# Cave Spider
execute positioned ~1 ~3 ~-1 run tp @e[distance=..4,tag=TrzTentCaveSpider] ~0 -10 ~0
summon cave_spider ~1 ~3 ~-1 {CustomName:"\"Bessie\"",PersistenceRequired:1,DeathLootTable:"minecraft:empty",Tags:["TrzTentCaveSpider"]}

# Sign
execute positioned ~3 ~2 ~ run kill @e[distance=..3,type=item,nbt={Item:{id:"minecraft:dark_oak_sign"}}]
setblock ~3 ~2 ~ dark_oak_wall_sign[facing=east]{Text1:"{\"text\":\"Turfalda\",\"color\":\"dark_red\"}",Text2:"{\"text\":\"Battlebuster\",\"color\":\"dark_red\"}",Text4:"{\"text\":\"§oit will kill\",\"color\":\"dark_purple\"}"}

# Item Frame Sign
# remove attached previous item_frame
execute positioned ~3 ~2 ~-3 run kill @e[distance=..3,type=item_frame,tag=TrzTentWeaponsmith]
# remove "popped" loot previous item_frame
execute positioned ~3 ~2 ~-3 run kill @e[distance=..3,type=item,nbt={Item:{id:"minecraft:item_frame"}}]
summon item_frame ~3 ~2 ~-3 {Invulnerable:1b,Facing:5,ItemDropChance:0.0,Item:{id:golden_sword,Count:1},Tags:["TrzTentWeaponsmith"]}

# Weaponsmith Villager
execute positioned ~1 ~0 ~-1 run tp @e[distance=..3,type=villager,tag=TrzTentWeaponsmith] ~0 -10 ~0
summon villager ~1 ~0.5 ~-1 {CustomName:"\"Turfalda Battlebuster\"",CustomNameVisible:0,PersistenceRequired:1,VillagerData:{level:5,profession:weaponsmith,type:savanna},Offers:{Recipes:[{rewardExp:0,maxUses:99,buy:{id:emerald,Count:32},sell:{id:diamond_sword,Count:1,tag:{Enchantments:[{id:vanishing_curse,lvl:1},{id:looting,lvl:3},{id:mending,lvl:1},{id:sharpness,lvl:5},{id:unbreaking,lvl:3}],display:{Name:"\"Wonder Sword\""}}},xp:0},{rewardExp:0,maxUses:99,buy:{id:emerald,Count:32},sell:{id:trident,Count:1,tag:{Enchantments:[{id:vanishing_curse,lvl:1},{id:channeling,lvl:1},{id:loyalty,lvl:3},{id:mending,lvl:1},{id:unbreaking,lvl:3}],display:{Name:"\"Wonder Trident\"",Lore:["{\"text\":\"storm conductor\"}"]}}},xp:0},{rewardExp:0,maxUses:99,buy:{id:emerald,Count:24},sell:{id:bow,Count:1,tag:{Enchantments:[{id:vanishing_curse,lvl:1},{id:flame,lvl:1},{id:infinity,lvl:1},{id:power,lvl:5},{id:punch,lvl:2},{id:unbreaking,lvl:3}],display:{Name:"\"Wonder Bow\"",Lore:["{\"text\":\"arrows included\"}"]}}},xp:0},{rewardExp:0,maxUses:99,buy:{id:emerald,Count:24},sell:{id:crossbow,Count:1,tag:{Enchantments:[{id:vanishing_curse,lvl:1},{id:mending,lvl:1},{id:piercing,lvl:4},{id:quick_charge,lvl:5},{id:unbreaking,lvl:3}],display:{Name:"\"Wonder Crossbow\"",Lore:["{\"text\":\"have you tried rockets?\"}"]}}},xp:0},{rewardExp:0,maxUses:99,buy:{id:emerald,Count:1},sell:{id:arrow,Count:16},xp:0},{rewardExp:0,maxUses:99,buy:{id:emerald,Count:1},sell:{id:tipped_arrow,Count:8,tag:{Potion:strong_harming}},xp:0},{rewardExp:0,maxUses:99,buy:{id:emerald,Count:1},sell:{id:tipped_arrow,Count:8,tag:{Potion:long_slowness}},xp:0},{rewardExp:0,maxUses:99,buy:{id:emerald,Count:1},sell:{id:tipped_arrow,Count:8,tag:{Potion:long_poison}},xp:0},{rewardExp:0,maxUses:99,buy:{id:emerald,Count:1},sell:{id:tipped_arrow,Count:2,tag:{display:{Name:"\"Death Arrow\""},CustomPotionColor:0,CustomPotionEffects:[{Id:2b,Amplifier:2b,Duration:4800},{Id:7b,Amplifier:2b,Duration:4800},{Id:19b,Amplifier:2b,Duration:4800}]}},xp:0},{rewardExp:0,maxUses:99,buy:{id:emerald,Count:1},sell:{id:firework_rocket,Count:8},xp:0},{rewardExp:0,maxUses:99,buy:{id:emerald,Count:1},sell:{id:potion,Count:8,tag:{Potion:strong_poison}},xp:0}]},Tags:["TrzTentWeaponsmith"]}
