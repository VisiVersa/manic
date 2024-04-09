scoreboard players set #manic.spawning.rift_vigil manic.dummy 18000
scoreboard players add #manic.rift_id manic.dummy 1

summon item_display ~ ~ ~ {Passengers:[{id:"minecraft:slime",Tags:["nucleus.entity","manic.entity","manic.tick","manic.rift_vigil","manic.rift_vigil.slime","smithed.entity","nucleus.smite_damage","nucleus.smite_damage.reduced"],Health:1000f,Attributes:[{Name:generic.max_health,Base:1000}],active_effects:[{id:"minecraft:invisibility",amplifier:0b,duration:-1,show_particles:0b},{id:"minecraft:fire_resistance",amplifier:0b,duration:-1,show_particles:0b},{id:"minecraft:water_breathing",amplifier:0b,duration:-1,show_particles:0b}],Silent:1b,NoAI:1b,Size:4,CustomName:'{"translate":"entity.manic.rift_vigil"}',PersistenceRequired:1b}],item:{id:"minecraft:stone",Count:1b},Marker:1b,Invisible:1b,Tags:["nucleus.entity","nucleus.display_entity","manic.entity","manic.tick","manic.second_clock","manic.rift_vigil","manic.rift_vigil.display","smithed.entity","smithed.strict"],item:{id:"minecraft:leather_boots",Count:1b,tag:{CustomModelData:8360042,Damage:0}},CustomName:'{"translate":"entity.manic.rift_vigil"}',teleport_duration:1.15,transformation:{scale:[1.0,1.0,1.0],left_rotation:{axis:[0f,0f,0f],angle:0f},right_rotation:{axis:[0f,0f,0f],angle:0f},translation:[0.0,0.5,0.0]}}
execute as @e[type=minecraft:item_display,tag=manic.rift_vigil,sort=nearest,limit=1] at @s run function manic:entity/rift/rift_vigil/spawn/as_display
