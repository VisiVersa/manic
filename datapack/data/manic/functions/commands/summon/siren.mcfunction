summon drowned ~ ~ ~ {Silent:1b,DeathTime:19,DeathLootTable:"manic:entities/siren",Team:"smithed.prevent_aggression",Health:80f,Tags:["nucleus.deletes_vehicles","smithed.entity","nucleus.entity","nucleus.living_entity","nucleus.hostile","nucleus.zombie_entity","nucleus.no_movement","manic.entity","manic.siren","manic.second_clock","manic.tick","manic.spectre","manic.despawns","nucleus.iron_golem_target"],CustomName:'{"translate":"entity.manic.siren"}',ArmorItems:[{},{},{},{id:'minecraft:potion',Count:1b,tag:{CustomModelData:8360124,nucleus:{custom_model_data:{idle:8360116,anim:{spawn:8360124,spawn_frames:40}}},CustomPotionColor:16777215}}],ArmorDropChances:[0.085F,0.085F,0.085F,-327.670F],ActiveEffects:[{Id:14b,Amplifier:0b,Duration:-1,ShowParticles:0b}],Attributes:[{Name:generic.max_health,Base:80},{Name:generic.knockback_resistance,Base:0.75},{Name:generic.movement_speed,Base:0.65},{Name:generic.attack_damage,Base:8},{Name:generic.attack_knockback,Base:1.0},{Name:generic.armor,Base:8},{Name:generic.follow_range,Base:64}],PersistenceRequired:1b,CanBreakDoors:0b,LeftHanded:0b,IsBaby:0b,HandDropChances:[-10000.0f,-10000.0f],CanPickUpLoot:0b}

execute if entity @s[type=player] run scoreboard players set #persistent manic.dummy 1
execute as @e[type=drowned,tag=manic.siren,tag=!manic.initiated,sort=nearest,limit=1] run function manic:entity/siren/init

execute store result score #debug manic.dummy run gamerule sendCommandFeedback
execute if score #debug manic.dummy matches 1 run tellraw @s {"translate":"commands.summon.success","with": [{"translate":"entity.manic.siren"}]}
execute if entity @s[type=player] run function nucleus:entity/player/commands/no_feedback/main
