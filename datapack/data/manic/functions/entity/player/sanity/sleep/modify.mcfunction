execute if score @s manic.sleep_timer matches 1.. run return run function manic:entity/player/sanity/sleep/fail
scoreboard players set @s manic.sleep_timer 600

scoreboard players set #sleep_restore manic.dummy 2000
execute if score @s manic.lunacy matches 1.. run scoreboard players set #sleep_restore manic.dummy 666

execute if score @s manic.sanity_debt matches 1.. run function manic:entity/player/sanity/sleep/sanity_debt
scoreboard players operation @s manic.sanity += #sleep_restore manic.dummy
function manic:entity/player/sanity/display/main
