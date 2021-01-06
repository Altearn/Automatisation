### VISITE SALLE DE CONTROL, DIRECTION DOME

# Dialog area
execute if score timer story matches 1 as @e[tag=dialog_area] at @s run tp @s 75 5 23 ~5 ~
execute if score timer story matches 1 as @e[tag=dialog_area] at @s run particle minecraft:totem_of_undying ^ ^ ^3 0.1 0.1 0.1 0 5 force @a[tag=player]

# Init dialog
execute if score timer story matches 1 at @e[tag=dialog_area] if entity @a[tag=player,distance=..4] run scoreboard players set timer story 2

# dialog text & actions
execute if score timer story matches 1..220 as @e[tag=pesier] at @s run tp @s 77.21 4.0 23.42 facing entity @p

execute if score timer story matches 10 run tellraw @a[tag=player] ["",{"text":"\nMme Pesier :","bold":true,"color":"dark_green"},{"text":" Ici nous nous trouvons dans la salle de contrôle."}]
execute if score timer story matches 10 as @a[tag=player] at @s run playsound minecraft:entity.villager.trade master @s

execute if score timer story matches 60 run tellraw @a[tag=player] ["",{"text":"\nMme Pesier :","bold":true,"color":"dark_green"},{"text":" Elle permet de gérer le Rover et de traiter toutes les informations envoyées par celui-ci."}]
execute if score timer story matches 60 as @a[tag=player] at @s run playsound minecraft:entity.villager.trade master @s

execute if score timer story matches 140 run tellraw @a[tag=player] ["",{"text":"\nMme Pesier :","bold":true,"color":"dark_green"},{"text":" Pour faire fonctionner et traiter toutes les données, nous avons besoin de grosses ressources électriques et informatiques que vous pouvez apercevoir dans la salle des serveurs."}]
execute if score timer story matches 140 as @a[tag=player] at @s run playsound minecraft:entity.villager.trade master @s

execute if score timer story matches 240 run tag @e[tag=pesier] add motion
execute if score timer story matches 240 run data modify storage minecraft:motion_run Animation set from storage minecraft:motion Animation[5]
execute if score timer story matches 240 run scoreboard players set motion story 1

# next step
execute if score timer story matches 240.. if score motion story matches 0 store success score timer story run scoreboard players set step story 8