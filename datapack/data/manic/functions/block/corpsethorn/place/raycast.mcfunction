execute unless block ^ ^ ^0.01 #nucleus:raycast_ignore rotated ~ 0 align xyz positioned ~0.5 ~ ~0.5 if predicate manic:block/placement_valid/corpsethorn unless entity @e[type=#manic:block_bases,distance=..0.5,tag=smithed.block] run function manic:block/corpsethorn/place/summon
execute if entity @s[distance=..5] if block ^ ^ ^0.01 #nucleus:raycast_ignore positioned ^ ^ ^0.01 run function manic:block/corpsethorn/place/raycast
