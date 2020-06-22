# ~0 ~0 ~0 should be south-west (diagonal)
#          from the south-west corner of the build area
setblock ~0 ~-1 ~0 chiseled_stone_bricks
execute positioned ~1 ~-1 ~-2 run function trz:tent/construct
