data merge entity @s {Team:"smithed.prevent_aggression",Tags:["nucleus.deletes_vehicles","smithed.entity","nucleus.entity","nucleus.living_entity","nucleus.hostile","nucleus.trader_entity","nucleus.trader_entity.model_based","manic.entity","manic.tick","manic.zealot","manic.second_clock","nucleus.iron_golem_target"],CustomName:'{"translate":"entity.manic.zealot"}',Silent:1b,DeathTime:19s,Offers:{Recipes:[]},ActiveEffects:[{Id:14b,Duration:-1,Amplifier:0b,ShowParticles:0b}],ArmorDropChances:[-10000.0f,-10000.0f,-10000.0f,-10000.0f],HandDropChances:[-10000.0f,-10000.0f],ArmorItems:[{},{},{},{Count:1b,id:"minecraft:structure_block",tag:{nucleus:{custom_model_data:{idle:8360180,moving:8360182}},CustomModelData:8360000}}],HandItems:[{id:"minecraft:potion",Count:1b,tag:{CustomModelData:8360180,CustomPotionColor:0}}],DeathLootTable:"manic:entities/zealot",Attributes:[{Name:generic.movement_speed,Base:0.5},{Name:generic.max_health,Base:65},{Name:generic.knockback_resistance,Base:0.9}],Health:65f,PersistenceRequired:1b}
data modify entity @s ArmorItems[3].tag.manic.home set from entity @s Pos
