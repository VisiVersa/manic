scoreboard players enable @s manic.exit_maze
tellraw @s {"translate":"ui.manic.stuck","color":"#106050","with":[[{"text":"\ua000","font":"manic:tooltip","color":"white"}," ",{"translate":"pack.manic","bold":true,"color":"#106050","font":"minecraft:default"},{"font":"minecraft:default","text":" >>","color":"#86a697"}],{"translate":"ui.manic.stuck.link","color":"#7cc17c","underlined":true,"clickEvent":{"action":"run_command","value":"/trigger manic.exit_maze set 1"}}]}