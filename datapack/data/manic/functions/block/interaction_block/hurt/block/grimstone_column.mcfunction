playsound manic:block.grimstone_column.hit block @a[distance=..16] ~ ~ ~ 1
execute on passengers on attacker store success score #instabreak manic.dummy if predicate nucleus:item/holding/pickaxes
execute if score #instabreak manic.dummy matches 1 on passengers run function manic:block/grimstone_column/break
particle item leather_boots{CustomModelData:8360910,display:{color:16777215}} ~ ~1 ~ 0.3 0.4 0.3 0.05 5 normal
