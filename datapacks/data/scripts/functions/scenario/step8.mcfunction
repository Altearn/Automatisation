### VISITE DOME, DIRECTION SALLE D'ASSEMBLAGE

# Dialog area
execute if score timer story matches 1 as @e[tag=dialog_area] at @s run tp @s 88 11 23 ~5 ~
execute if score timer story matches 1 as @e[tag=dialog_area] at @s run particle minecraft:totem_of_undying ^ ^ ^2.5 0.1 0.1 0.1 0 5 force @a[tag=player]

# Init dialog
execute if score timer story matches 1 at @e[tag=dialog_area] if entity @a[tag=player,distance=..4] run scoreboard players set timer story 2

# dialog text & actions
execute if score timer story matches 1..80 as @e[tag=pesier] at @s run tp @s 88.51 9.0 23.21 facing entity @p

execute if score timer story matches 10 run tellraw @a[tag=player] ["",{"text":"\nMme Pesier :","bold":true,"color":"dark_green"},{"text":" En face de nous se trouve le dôme de simulation où est reproduit une partie du sol martien, l\u2019environnement de test pour les rovers envoyés sur Mars."}]
execute if score timer story matches 10 as @a[tag=player] at @s run playsound minecraft:entity.villager.trade master @s

execute if score timer story matches 120 run tag @e[tag=pesier] add motion
execute if score timer story matches 120 run data modify storage minecraft:motion_run Animation set from storage minecraft:motion Animation[6]
execute if score timer story matches 120 run scoreboard players set motion story 1

# next step
execute if score timer story matches 120.. if score motion story matches 0 store success score timer story run scoreboard players set step story 9