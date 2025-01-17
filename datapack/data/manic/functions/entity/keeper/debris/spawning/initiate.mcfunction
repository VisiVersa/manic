execute store result score #x manic.dummy run random value 1..7 manic:rng/1..7
execute if predicate nucleus:chance/0.5 run tag @s add manic.negative_x
execute store result score #z manic.dummy run random value 1..7 manic:rng/1..7
execute if predicate nucleus:chance/0.5 run tag @s add manic.negative_z

execute store result score #pos_x manic.dummy run data get entity @s Pos[0]
execute store result score #pos_z manic.dummy run data get entity @s Pos[2]

execute store result entity @s[tag=!manic.negative_x] Pos[0] double 1 run scoreboard players operation #pos_x manic.dummy += #x manic.dummy
execute store result entity @s[tag=manic.negative_x] Pos[0] double 1 run scoreboard players operation #pos_x manic.dummy -= #x manic.dummy
execute store result entity @s[tag=!manic.negative_z] Pos[2] double 1 run scoreboard players operation #pos_z manic.dummy += #z manic.dummy
execute store result entity @s[tag=manic.negative_z] Pos[2] double 1 run scoreboard players operation #pos_z manic.dummy -= #z manic.dummy

execute at @s if block ~ ~1 ~ #nucleus:air run tp @s ~ ~1 ~
execute at @s run function manic:entity/keeper/debris/spawn
kill @s
