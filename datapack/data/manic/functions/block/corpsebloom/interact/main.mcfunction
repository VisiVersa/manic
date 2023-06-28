# Set Data
data remove storage manic:storage root.temp
data remove storage nucleus:storage root.temp
data modify storage nucleus:storage root.temp.item set from entity @s SelectedItem

# Run Functions
execute if entity @s[gamemode=creative] run data modify storage manic:storage root.temp.gamemode set value "creative"
execute as @e[type=interaction,tag=manic.corpsebloom,distance=..7,nbt={interaction:{}}] at @s run function manic:block/corpsebloom/interact/as_entity

execute if data storage manic:storage root.temp{result:"reduce_count"} run item modify entity @s[gamemode=!creative] weapon.mainhand manic:reduce_count/1
execute if data storage manic:storage root.temp{result:"bottle_sap"} run function manic:block/corpsebloom/interact/bottle_sap/as_player

# Revoke Advancement
advancement revoke @s only manic:technical/player_interacted_with_entity/block/corpsebloom
