execute if score #marker_debug manic.dummy matches 1 run particle block_marker obsidian ~ ~ ~
execute unless score #marker_debug manic.dummy matches 1 run function manic:technical/postgen/paracusia/spawn
