execute unless block ~ ~ ~ #minecraft:slabs run summon item_display ~ ~ ~ {item:{id:"minecraft:structure_block",Count:1b,tag:{CustomModelData:8360000}},Tags:["nucleus.entity","nucleus.display_entity","manic.tick","smithed.entity","smithed.strict","manic.heretic_tentacle","manic.entity_component"],transformation:{scale:[1.0,1.0,1.0],left_rotation:{axis:[0f,0f,0f],angle:0f},right_rotation:{axis:[0f,0f,0f],angle:0f},translation:[0.0,1.8,0.0]}}
execute if block ~ ~ ~ #minecraft:slabs run summon item_display ~ ~0.5 ~ {item:{id:"minecraft:structure_block",Count:1b,tag:{CustomModelData:8360000}},Tags:["nucleus.entity","nucleus.display_entity","manic.tick","smithed.entity","smithed.strict","manic.heretic_tentacle","manic.entity_component"],transformation:{scale:[1.0,1.0,1.0],left_rotation:{axis:[0f,0f,0f],angle:0f},right_rotation:{axis:[0f,0f,0f],angle:0f},translation:[0.0,1.8,0.0]}}
execute as @e[type=item_display,tag=manic.heretic_tentacle,sort=nearest,limit=1] run data modify entity @s CustomName set from storage manic:storage root.temp.custom_name
scoreboard players set #verical_attempts manic.dummy 10
playsound manic:entity.cultist_tentacle.spawn hostile @a
