scoreboard players set @s smithed.damage 4
scoreboard players set @s manic.invul_timer 10
scoreboard players remove @s manic.sanity 50
execute if data storage manic:storage root.gamerules{legacy_sanity:0b} run scoreboard players remove @s manic.sanity 50
function manic:entity/player/damage/_difficulty_changes

tag @s add manic.damage.paracusia
function #smithed.damage:entity/apply/projectile
tag @s remove manic.damage.paracusia
