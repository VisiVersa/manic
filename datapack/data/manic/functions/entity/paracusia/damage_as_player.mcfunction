damage @s 7 manic:indoctrinated by @e[type=vindicator,tag=manic.damager,sort=nearest,limit=1]
scoreboard players remove @s manic.sanity 100
execute if data storage manic:storage root.gamerules{legacy_sanity:0b} run scoreboard players remove @s manic.sanity 100
