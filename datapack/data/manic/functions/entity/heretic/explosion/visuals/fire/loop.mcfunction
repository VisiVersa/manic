particle flame ~ ~ ~ ^ ^ ^100000000000 0.000000000003 0 force

scoreboard players remove #rotation manic.dummy 1
execute if score #rotation manic.dummy matches 1.. rotated ~5 ~ run function manic:entity/heretic/explosion/visuals/fire/loop
