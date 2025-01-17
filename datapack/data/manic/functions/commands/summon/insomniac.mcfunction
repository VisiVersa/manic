execute as @e[type=minecraft:wandering_trader,tag=manic.insomniac,tag=!manic.insomniac.player_spawned] at @s run function manic:entity/insomniac/despawn
execute unless score #naturally_spawned manic.dummy matches 1 run scoreboard players set #manic.spawning.insomniac manic.dummy 1800
execute if score #naturally_spawned manic.dummy matches 1 run scoreboard players set #manic.spawning.natural_insomniac manic.dummy 1800
scoreboard players set #naturally_spawned manic.dummy 0

execute if entity @s[type=minecraft:player] run scoreboard players set #persistent manic.dummy 1
execute summon wandering_trader run function manic:entity/insomniac/init

execute store result score #debug manic.dummy run gamerule sendCommandFeedback
execute if score #debug manic.dummy matches 1 run tellraw @s {"translate":"commands.summon.success","with": [{"translate":"entity.manic.insomniac"}]}
execute if entity @s[type=minecraft:player] run function nucleus:entity/player/commands/no_feedback/main
