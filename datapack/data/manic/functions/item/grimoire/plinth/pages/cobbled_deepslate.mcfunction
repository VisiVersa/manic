scoreboard players set @s manic.grimoire.chapter 1
execute if score @s manic.grimoire.page matches 1.. run scoreboard players set @s manic.grimoire.page 0

execute if score @s manic.grimoire.page matches 0 run title @s subtitle {"text":"\ua02b","font":"manic:grimoire/plinth","color":"#4404f9"}
