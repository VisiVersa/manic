data modify entity @s ArmorItems[3].tag.nucleus.custom_model_data.idle set value 8360174
data modify entity @s ArmorItems[3].tag.nucleus.custom_model_data.moving set value 8360174
attribute @s minecraft:generic.movement_speed modifier add 8-3-6-2-12 manic.movement_speed -100 add

tag @s add manic.heretic.cast_explosion
scoreboard players set @s nucleus.frames 78
function nucleus:entity/technical/animate
playsound manic:entity.heretic.cast_spell.start hostile @a ~ ~ ~ 1

tp @s ~ ~ ~ facing entity @p[gamemode=!creative,gamemode=!spectator,distance=..16]
