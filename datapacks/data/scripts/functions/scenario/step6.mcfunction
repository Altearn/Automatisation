### VISITE SAS, DIRECTION SALLE DE CONTROL

# Dialog area
execute if score timer story matches 1 as @e[tag=dialog_area] at @s run tp @s 53 5 -1 ~5 ~
execute if score timer story matches 1 as @e[tag=dialog_area] at @s run particle minecraft:totem_of_undying ^ ^ ^2.5 0.1 0.1 0.1 0 5 force @a[tag=player]

# Init dialog
execute if score timer story matches 1 at @e[tag=dialog_area] if entity @a[tag=player,distance=..3] run scoreboard players set timer story 2

# dialog text & actions
execute if score timer story matches 1..80 as @e[tag=pesier] at @s run tp @s 54.36 4.0 -1.89 facing entity @p

execute if score timer story matches 10 run tellraw @a[tag=player] ["",{"text":"\nMme Pesier :","bold":true,"color":"dark_green"},{"text":" Cette porte que vous voyez est un sas qui permet d'éliminer les poussières et petites particules qui pourraient altérer les actions menées dans les salles suivantes. Vous verrez mieux cette pièce plus loin."}]
execute if score timer story matches 10 as @a[tag=player] at @s run playsound minecraft:entity.villager.trade master @s

execute if score timer story matches 150 run tag @e[tag=pesier] add motion
execute if score timer story matches 150 run data modify storage minecraft:motion_run Animation set from storage minecraft:motion Animation[4]
execute if score timer story matches 150 run scoreboard players set motion story 1

# next step
execute if score timer story matches 150.. if score motion story matches 0 store success score timer story run scoreboard players set step story 7