summon drowned ~ ~ ~ {Silent:1b,DeathTime:19,DeathLootTable:"manic:entities/siren",Team:"smithed.prevent_aggression",Health:80f,Tags:["nucleus.deletes_vehicles","smithed.entity","nucleus.entity","sanguine.entity.gives_blood","nucleus.zombie_entity","nucleus.entity.no_movement","manic.entity","manic.siren","manic.second_clock","manic.tick","manic.entity.spectre","manic.entity.despawns","nucleus.iron_golem_target"],CustomName:'{"translate":"entity.manic.siren"}',ArmorItems:[{},{},{},{id:'minecraft:potion',Count:1b,tag:{CustomModelData:8360124,nucleus:{custom_model_data:{idle:8360116,anim:{spawn:8360124,spawn_frames:21}}},CustomPotionColor:16777215}}],ArmorDropChances:[0.085F,0.085F,0.085F,-327.670F],ActiveEffects:[{Id:14b,Amplifier:0b,Duration:19999980,ShowParticles:0b}],Attributes:[{Name:generic.max_health,Base:80},{Name:generic.knockback_resistance,Base:1.0},{Name:generic.movement_speed,Base:0.397},{Name:generic.attack_damage,Base:8},{Name:generic.attack_knockback,Base:1.0},{Name:generic.armor,Base:8},{Name:generic.follow_range,Base:64}],PersistenceRequired:1b}

execute if entity @s[type=player] run scoreboard players set #persistent manic.dummy 1
execute as @e[type=drowned,tag=manic.siren,sort=nearest,limit=1,tag=!manic.initiated] at @s run function manic:entity/siren/init

execute store result score #debug manic.dummy run gamerule sendCommandFeedback
execute if score #debug manic.dummy matches 1 run tellraw @s {"translate":"commands.summon.success","with": [{"translate":"entity.manic.siren"}]}
execute if entity @s[type=player] run function manic:entity/player/gamerules/no_feedback/main
