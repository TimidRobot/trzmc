setblock ~ ~-6 ~ oak_fence
execute positioned ~ ~ ~ run tp @e[distance=..2,tag=TrzTentSentinel] ~ -10 ~
summon leash_knot ~ ~-6 ~ {UUIDLeast:101l,UUIDMost:101l,Tags:["TrzTentSentinel"]}
summon iron_golem ~ ~ ~ {DeathLootTable:"minecraft:empty",Leash:{UUIDLeast:101l,UUIDMost:101l},Tags:["TrzTentSentinel"]}
