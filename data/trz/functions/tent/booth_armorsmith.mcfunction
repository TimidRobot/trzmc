# Booth: bottom
fill ~2 ~0 ~0 ~2 ~1 ~0 dark_oak_fence
fill ~2 ~0 ~-3 ~2 ~1 ~-3 dark_oak_fence
fill ~2 ~0 ~-1 ~2 ~0 ~-2 dark_oak_slab

# Booth: top
fill ~0 ~2 ~0 ~2 ~2 ~-3 dark_oak_slab[type=top]
fill ~0 ~1 ~-1 ~0 ~1 ~-2 barrier
fill ~0 ~2 ~-1 ~1 ~2 ~-2 barrier
setblock ~2 ~2 ~0 stripped_dark_oak_log[axis=x]
setblock ~2 ~2 ~-3 stripped_dark_oak_log[axis=x]
execute positioned ~1 ~2 ~-2 run kill @e[distance=..3,type=item,nbt={Item:{id:"minecraft:cyan_carpet"}}]
fill ~1 ~3 ~0 ~2 ~3 ~0 cyan_carpet
fill ~1 ~3 ~-3 ~2 ~3 ~-3 cyan_carpet
fill ~2 ~3 ~-1 ~2 ~3 ~-2 cyan_carpet

# Decorations
setblock ~0 ~0 ~0 cauldron[level=3]
fill ~0 ~-1 ~0 ~1 ~-1 ~-2 gravel
setblock ~0 ~0 ~-1 blast_furnace[facing=east,lit=true]
setblock ~1 ~0 ~0 anvil[facing=east]
setblock ~0 ~0 ~-2 crafting_table
setblock ~1 ~0 ~-3 chest[facing=south]{Lock:lockedandempty,CustomName:"\"§bRarsaer§r: Leave my things be!§7§o - Chest\""}
fill ~3 ~-1 ~-1 ~3 ~-1 ~-2 cyan_wool

# Back Banners
execute positioned ~ ~1 ~-1 run kill @e[distance=..3,type=item,nbt={Item:{id:"minecraft:cyan_banner"}}]
setblock ~ ~2 ~-1 cyan_wall_banner[facing=east]
setblock ~ ~2 ~-2 cyan_wall_banner[facing=east]

# Armor Stand
fill ~0 ~0 ~-3 ~0 ~1 ~-3 barrier
execute positioned ~0 ~0.5 ~-3 run tp @e[distance=..3,type=armor_stand,tag=TrzTentArmorsmith] ~0 -10 ~0
# Pose:{Head:[0f,270f,0f],Body:[0f,270f,0f],LeftArm:[270f,0f,0f],RightArm:[0f,270f,0f],LeftLeg:[0f,0f,0f],RightLeg:[0f,0f,270f]}
summon armor_stand ~0 ~-0.5 ~-3 {Marker:1,Invisible:0,Invulnerable:1b,ShowArms:1,ArmorDropChances:[0.0,0.0,0.0,0.0],ArmorItems:[{id:leather_boots,Count:1,tag:{display:{color:1908001}}},{id:leather_leggings,Count:1,tag:{display:{color:1481884}}},{id:chainmail_chestplate,Count:1},{id:iron_helmet,Count:1}],Rotation:[290f],Small:0,DisabledSlots:7967,Tags:["TrzTentArmorsmith"]}

# Sign
execute positioned ~3 ~2 ~1 run kill @e[distance=..3,type=item,nbt={Item:{id:"minecraft:dark_oak_sign"}}]
setblock ~3 ~2 ~0 dark_oak_wall_sign[facing=east]{Text1:"{\"text\":\"Rarsaer\",\"color\":\"aqua\"}",Text2:"{\"text\":\"Smeltgut\",\"color\":\"aqua\"}",Text3:"{\"text\":\"§orobust armor\",\"color\":\"dark_purple\"}",Text4:"{\"text\":\"§oyou can trust\",\"color\":\"dark_purple\"}"}

# Item Frame Sign
# remove attached previous item_frame
execute positioned ~3 ~2 ~-3 run kill @e[distance=..3,type=item_frame,tag=TrzTentArmorsmith]
# remove "popped" loot previous item_frame
execute positioned ~3 ~2 ~-3 run kill @e[distance=..3,type=item,nbt={Item:{id:"minecraft:item_frame"}}]
summon item_frame ~3 ~2 ~-3 {Invulnerable:1b,Facing:5,ItemDropChance:0.0,Item:{id:golden_chestplate,Count:1},Tags:["TrzTentArmorsmith"]}

# Armorsmith Villager
execute positioned ~1 ~0 ~-1 run tp @e[distance=..3,type=villager,tag=TrzTentArmorsmith] ~0 -10 ~0
summon villager ~1 ~0.5 ~-2 {CustomName:"\"Rarsaer Smeltgut\"",CustomNameVisible:0,PersistenceRequired:1,VillagerData:{level:5,profession:armorer,type:snow},Offers:{Recipes:[{rewardExp:0,maxUses:99,buy:{id:emerald,Count:32},sell:{id:diamond_helmet,Count:1,tag:{Enchantments:[{id:vanishing_curse,lvl:1},{id:protection,lvl:5},{id:aqua_affinity,lvl:1},{id:respiration,lvl:3},{id:unbreaking,lvl:3}],display:{Name:"\"Wonder Helm\""}}},xp:0},{rewardExp:0,maxUses:99,buy:{id:emerald,Count:40},sell:{id:diamond_chestplate,Count:1,tag:{Enchantments:[{id:vanishing_curse,lvl:1},{id:protection,lvl:5},{id:unbreaking,lvl:3}],display:{Name:"\"Wonder Chestplate\""}}},xp:0},{rewardExp:0,maxUses:99,buy:{id:emerald,Count:32},sell:{id:diamond_leggings,Count:1,tag:{Enchantments:[{id:vanishing_curse,lvl:1},{id:protection,lvl:5},{id:unbreaking,lvl:3}],display:{Name:"\"Wonder Leggings\""}}},xp:0},{rewardExp:0,maxUses:99,buy:{id:emerald,Count:32},sell:{id:diamond_boots,Count:1,tag:{Enchantments:[{id:vanishing_curse,lvl:1},{id:protection,lvl:5},{id:depth_strider,lvl:1},{id:unbreaking,lvl:3}],display:{Name:"\"Wonder Boots\""}}},xp:0},{rewardExp:0,maxUses:99,buy:{id:emerald,Count:16},sell:{id:shield,Count:1,tag:{Enchantments:[{id:vanishing_curse,lvl:1},{id:unbreaking,lvl:3}],display:{Name:"\"Wonder Shield\""}}},xp:0},{rewardExp:0,maxUses:99,buy:{id:emerald,Count:32},sell:{id:bell,Count:1,xp:0}},{rewardExp:0,maxUses:99,buy:{id:emerald,Count:24},sell:{id:diamond_horse_armor,Count:1},xp:0}]},Tags:["TrzTentArmorsmith"]}
