data modify storage manic:storage root.temp.spawn_direction set from entity @s Rotation
ride @s dismount
function manic:commands/summon/flagellant/transformed
tp @s ~ -512 ~
particle item potion{CustomModelData:8360137,CustomPotionColor:16777215} ~ ~1 ~ 0.35 0.75 0.35 0.05 200 force
