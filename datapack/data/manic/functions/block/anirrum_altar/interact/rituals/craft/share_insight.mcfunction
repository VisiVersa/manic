data modify storage manic:storage root.temp.ritual_success set value 1b
data modify storage manic:storage root.temp.reduce_sanity set value 1000
scoreboard players set #sanity_charges manic.dummy 0
scoreboard players set #ritual_id manic.dummy 9

execute as @a[distance=..16,gamemode=!spectator] unless score @s manic.insight > #insight manic.dummy unless score @s manic.insight = #insight manic.dummy run function manic:block/anirrum_altar/interact/player/copy_insight

playsound manic:block.anirrum_altar.ritual.generic block @a
execute as @e[type=item_display,tag=manic.anirrum_podium.full,nbt={item:{tag:{manic:{podium_item:{id:"minecraft:structure_block",tag:{manic:{id:"lysosome"}}}}}}},distance=..4,limit=2] at @s positioned ~ ~1 ~ run function manic:block/anirrum_altar/interact/rituals/technical/delete_item
execute as @e[type=item_display,tag=manic.anirrum_podium.full,nbt={item:{tag:{manic:{podium_item:{id:"minecraft:structure_block",tag:{manic:{id:"necroplasm"}}}}}}},distance=..4,limit=2] at @s positioned ~ ~1 ~ run function manic:block/anirrum_altar/interact/rituals/technical/delete_item
tag @s add manic.ritual_success
