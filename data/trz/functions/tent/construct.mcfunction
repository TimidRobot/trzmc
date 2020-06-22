scoreboard objectives add banner_facing dummy
scoreboard objectives add banner_rotation dummy
scoreboard objectives add construct_debug dummy

#scoreboard players set #Var construct_debug 1

# Ground: Main
fill ~1 ~-1 ~-1 ~17 ~-1 ~-19 stone
fill ~1 ~0 ~-1 ~17 ~0 ~-19 gravel
fill ~4 ~0 ~-4 ~14 ~0 ~-16 hay_block
fill ~8 ~0 ~-2 ~10 ~0 ~-3 hay_block
# Ground: Extra
fill ~5 ~-1 ~0 ~15 ~-1 ~0 stone
fill ~5 ~0 ~0 ~15 ~0 ~0 gravel
fill ~8 ~-1 ~1 ~10 ~-1 ~1 stone
fill ~8 ~0 ~1 ~10 ~0 ~1 gravel
# air
fill ~-1 ~1 ~-1 ~18 ~16 ~-19 air

# Tent: floor center
setblock ~9 ~0 ~-10 chiseled_stone_bricks

# Tent: Back
fill ~5 ~1 ~-17 ~13 ~4 ~-17 white_wool
fill ~7 ~5 ~-17 ~11 ~5 ~-17 white_wool
fill ~6 ~1 ~-17 ~6 ~4 ~-17 magenta_wool
fill ~8 ~1 ~-17 ~8 ~5 ~-17 magenta_wool
fill ~10 ~1 ~-17 ~10 ~5 ~-17 magenta_wool
fill ~12 ~1 ~-17 ~12 ~4 ~-17 magenta_wool

# Support Beams: west lower
execute positioned ~2 ~1 ~-1 run function trz:tent/beam
# Support Beams: west mid
fill ~4 ~1 ~-3 ~4 ~3 ~-3 oak_log
fill ~4 ~1 ~-17 ~4 ~3 ~-17 oak_log
execute positioned ~4 ~4 ~-1 run function trz:tent/beam
setblock ~4 ~3 ~-8 lantern[hanging=true]
setblock ~4 ~3 ~-14 lantern[hanging=true]
# Support Beams: top (front)
fill ~7 ~1 ~-3 ~7 ~5 ~-3 oak_log
fill ~11 ~1 ~-3 ~11 ~5 ~-3 oak_log
fill ~6 ~6 ~-3 ~12 ~6 ~-3 oak_log[axis=x]
setblock ~8 ~5 ~-3 oak_stairs[facing=west,half=top]
setblock ~8 ~4 ~-3 oak_stairs[facing=west,shape=outer_right]
setblock ~10 ~5 ~-3 oak_stairs[facing=east,half=top]
setblock ~10 ~4 ~-3 oak_stairs[facing=east,shape=outer_left]
execute positioned ~4 ~4 ~-1 run function trz:tent/beam
scoreboard players set #Var banner_facing 3
execute positioned ~7 ~5 ~-2 run function trz:tent/banner
execute positioned ~11 ~5 ~-2 run function trz:tent/banner
scoreboard players reset #Var banner_facing
setblock ~5 ~6 ~-3 oak_stairs[facing=east,half=top]
setblock ~13 ~6 ~-3 oak_stairs[facing=west,half=top]
# Support Beams: top: (back)
fill ~9 ~1 ~-17 ~9 ~6 ~-17 oak_log
scoreboard players set #Var banner_facing 2
execute positioned ~9 ~4 ~-18 run function trz:tent/banner
scoreboard players reset #Var banner_facing
# Support Beams: top
execute positioned ~9 ~7 ~-1 run function trz:tent/beam
# Support Beams: west mid
fill ~14 ~1 ~-3 ~14 ~3 ~-3 oak_log
fill ~14 ~1 ~-17 ~14 ~3 ~-17 oak_log
execute positioned ~14 ~4 ~-1 run function trz:tent/beam
setblock ~14 ~3 ~-8 lantern[hanging=true]
setblock ~14 ~3 ~-14 lantern[hanging=true]
# Support Beams: east lower
execute positioned ~16 ~1 ~-1 run function trz:tent/beam

# Tent: front
fill ~5 ~1 ~-3 ~5 ~4 ~-3 white_wool
fill ~6 ~1 ~-3 ~6 ~4 ~-3 magenta_wool
fill ~12 ~1 ~-3 ~12 ~4 ~-3 magenta_wool
fill ~13 ~1 ~-3 ~13 ~4 ~-3 white_wool
# Tent: west
fill ~3 ~1 ~-5 ~3 ~3 ~-15 white_wool
# Tent: west middle
fill ~5 ~5 ~-5 ~6 ~5 ~-15 white_wool
# Tent: west top
fill ~7 ~6 ~-5 ~8 ~6 ~-15 white_wool
# Tent: east top
fill ~10 ~6 ~-5 ~11 ~6 ~-15 white_wool
# Tent: east middle
fill ~12 ~5 ~-5 ~13 ~5 ~-15 white_wool
# Tent: east
fill ~15 ~1 ~-5 ~15 ~3 ~-15 white_wool

# Stripe: 1
execute positioned ~1 ~1 ~-4 run function trz:tent/stripe_major
# Stripe: 3
execute positioned ~1 ~1 ~-6 run function trz:tent/stripe_minor
# Stripe: 5
execute positioned ~1 ~1 ~-8 run function trz:tent/stripe_major
# Stripe: 7
execute positioned ~1 ~1 ~-10 run function trz:tent/stripe_minor
# Stripe: 9
execute positioned ~1 ~1 ~-12 run function trz:tent/stripe_major
# Stripe: 11
execute positioned ~1 ~1 ~-14 run function trz:tent/stripe_minor
# Stripe: 13
execute positioned ~1 ~1 ~-16 run function trz:tent/stripe_major

# Interior: center lanterns
fill ~9 ~6 ~-6 ~9 ~5 ~-6 dark_oak_fence[east=false,west=false]
setblock ~9 ~4 ~-6 lantern[hanging=true]
fill ~9 ~6 ~-10 ~9 ~5 ~-10 dark_oak_fence[east=false,west=false]
setblock ~9 ~4 ~-10 lantern[hanging=true]
fill ~9 ~6 ~-14 ~9 ~5 ~-14 dark_oak_fence[east=false,west=false]
setblock ~9 ~4 ~-14 lantern[hanging=true]

# Interior: Trash
execute positioned ~4 ~1 ~-8 run function trz:tent/trash

# Interior: Booth: 1 (south-east, position: ~4 ~1 ~-4)
execute positioned ~4 ~1 ~-4 run function trz:tent/booth_weaponsmith
# Interior: Booth: 2 (middle-east, position: ~4 ~1 ~-9)
execute positioned ~4 ~1 ~-9 run function trz:tent/booth_armorsmith
# Interior: Booth: 3 (north-east, position: ~5 ~1 ~-15)
execute positioned ~5 ~1 ~-15 run function trz:tent/booth_eggmonger
# Interior: Booth: 4 (north-west, position: ~10 ~1 ~-15)
execute positioned ~10 ~1 ~-15 run function trz:tent/booth_trader
# Interior: Booth: 5 (middle-west, position: ~12 ~1 ~-9)
execute positioned ~12 ~1 ~-9 run function trz:tent/booth_gardener
# Interior: Booth: 6 (south-west, position: ~12 ~1 ~-4)
execute positioned ~12 ~1 ~-4 run function trz:tent/booth_toolsmith

# Grounds
scoreboard players set #Var banner_rotation 1
execute positioned ~6 ~1 ~-1 run function trz:tent/banner
scoreboard players set #Var banner_rotation 15
execute positioned ~12 ~1 ~-1 run function trz:tent/banner
scoreboard players reset #Var banner_rotation

# Construct Debug
execute if score #Var construct_debug matches 1 run setblock ~0 ~0 ~0 purple_wool
execute if score #Var construct_debug matches 1 positioned ~8 ~1 ~-9 run function trz:tent/init
execute if score #Var construct_debug matches 1 run setblock ~8 ~-1 ~-10 purple_wool
execute if score #Var construct_debug matches 1 run setblock ~8 ~-1 ~-10 command_block{Command:"execute positioned ~-8 ~1 ~10 run function trz:tent/construct",TrackOutput:0}

scoreboard players reset #Var construct_debug

# scoreboard reset
