# This is a stupid and hacky workaround because i can't figure out how to item modify add lore anywhere but the bottom
# Without the ability to put "entity": "this" field it will just leave a blank space in the lore so each option is hardcoded

execute if score #items manic.dummy matches 0 run data modify storage manic:storage root.temp.item.tag.display.Lore[5] set value '{"italic":false,"color":"gray","translate":"item.manic.void_chasm.items","with":["0"]}'
execute if score #items manic.dummy matches 1 run data modify storage manic:storage root.temp.item.tag.display.Lore[5] set value '{"italic":false,"color":"gray","translate":"item.manic.void_chasm.items","with":["1"]}'
execute if score #items manic.dummy matches 2 run data modify storage manic:storage root.temp.item.tag.display.Lore[5] set value '{"italic":false,"color":"gray","translate":"item.manic.void_chasm.items","with":["2"]}'
execute if score #items manic.dummy matches 3 run data modify storage manic:storage root.temp.item.tag.display.Lore[5] set value '{"italic":false,"color":"gray","translate":"item.manic.void_chasm.items","with":["3"]}'
execute if score #items manic.dummy matches 4 run data modify storage manic:storage root.temp.item.tag.display.Lore[5] set value '{"italic":false,"color":"gray","translate":"item.manic.void_chasm.items","with":["4"]}'
execute if score #items manic.dummy matches 5 run data modify storage manic:storage root.temp.item.tag.display.Lore[5] set value '{"italic":false,"color":"gray","translate":"item.manic.void_chasm.items","with":["5"]}'

execute if score #items manic.dummy matches 0 run data modify storage manic:storage root.temp.item.tag.CustomModelData set value 8360020
execute if score #items manic.dummy matches 1..4 run data modify storage manic:storage root.temp.item.tag.CustomModelData set value 8360021
execute if score #items manic.dummy matches 5 run data modify storage manic:storage root.temp.item.tag.CustomModelData set value 8360024
