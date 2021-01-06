### SALLE D'ATTENTE

# Dialog area
execute if score timer story matches 1 as @e[tag=dialog_area] at @s run tp @s 24 6 12 ~5 ~
execute if score timer story matches 1 as @e[tag=dialog_area] at @s run particle minecraft:totem_of_undying ^ ^ ^2.5 0.1 0.1 0.1 0 5 force @a[tag=player]

# Init dialog
execute if score timer story matches 1 positioned 24 6 12 if entity @a[tag=player,distance=..3] run scoreboard players set timer story 2

# dialog text & actions
execute if score timer story matches 10 run data modify storage minecraft:motion_run Animation set from storage minecraft:motion Animation[0]
execute if score timer story matches 10 run tag @e[tag=pesier] add motion
execute if score timer story matches 10 run tp @e[tag=motion] 31.5 4.0 1.5
execute if score timer story matches 10 run scoreboard players set motion story 1

execute if score timer story matches 120.. as @e[tag=pesier] at @s run tp @s ~ ~ ~ facing entity @p
execute if score timer story matches 120 run tellraw @a[tag=player] ["",{"text":"\nMme Pesier :","bold":true,"color":"dark_green"},{"text":" Bonjour \u2026, je suis madame Pesier. Je resterai avec vous cette première journée pour finaliser les démarches administratives vous concernant et vous présenter le laboratoire. Voulez-vous bien me suivre ?"}]
execute if score timer story matches 120 as @a[tag=player] at @s run playsound minecraft:entity.villager.trade master @s

execute if score timer story matches 280 run tellraw @a[tag=player] ["",{"text":"\nVous :","bold":true,"color":"red"},{"text":" Enchanté Madame Pesier. Je vous suis."}]
execute if score timer story matches 280 as @a[tag=player] at @s run playsound minecraft:entity.villager.yes master @s

# next step
execute if score timer story matches 340.. run scoreboard players set step story 2
execute if score timer story matches 340.. run scoreboard players set timer story 2