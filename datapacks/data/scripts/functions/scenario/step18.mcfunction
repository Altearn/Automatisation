### PROG

# Dialog area
#execute if score timer story matches 1 as @e[tag=dialog_area] at @s run tp @s 80 7 20 ~5 ~
#execute if score timer story matches 1 as @e[tag=dialog_area] at @s run particle minecraft:totem_of_undying ^ ^ ^1.5 0.1 0.1 0.1 0 5 force @a[tag=player]

# Init dialog
#execute if score timer story matches 1 as @a[tag=player] if score @s sign matches 1.. run scoreboard players set timer story 2
execute if score timer story matches 2.. run setblock 83 6 14 minecraft:purpur_pillar[axis=z]
execute if score timer story matches 2.. run setblock 83 6 15 minecraft:purpur_pillar[axis=y]
execute if score timer story matches 20 run clone 86 5 14 86 5 15 83 5 14

# dialog text & actions
execute if score timer story matches 20 run tellraw @a[tag=player] ["",{"text":"\nMme Pesier :","bold":true,"color":"dark_green"},{"text":" Jolie travail, je suis ravie de voir que vos compétences nous ont permis de développer ce projet spatial."}]
execute if score timer story matches 20 as @a[tag=player] at @s run playsound minecraft:entity.villager.trade master @s

execute if score timer story matches 120 run tellraw @a[tag=player] ["",{"text":"\nVous :","bold":true,"color":"red"},{"text":" Merci de m'avoir donné ma chance."}]
execute if score timer story matches 120 as @a[tag=player] at @s run playsound minecraft:entity.villager.yes master @s

execute if score timer story matches 180 run tellraw @a[tag=player] ["",{"text":"\nMme Pesier :","bold":true,"color":"dark_green"},{"text":" J'envoie vos programmes aux informaticiens pour qu'ils finissent l'optimisation afin de les transférer sur le rover."}]
execute if score timer story matches 180 as @a[tag=player] at @s run playsound minecraft:entity.villager.trade master @s

execute if score timer story matches 280 run tellraw @a[tag=player] ["",{"text":"\nMme Pesier :","bold":true,"color":"dark_green"},{"text":" Je viens vous rejoindre dans la salle de contrôle pour assister au test définitif."}]
execute if score timer story matches 280 as @a[tag=player] at @s run playsound minecraft:entity.villager.trade master @s

#execute if score timer story matches 280 run annim Mme Pesier vers la salle de contrôle
execute if score timer story matches 280 run tp @e[tag=pesier,tag=!motion] ~ -100 ~
execute if score timer story matches 280 run data modify storage minecraft:motion_run Animation set from storage minecraft:motion Animation[8]
execute if score timer story matches 280 run scoreboard players set motion story 1

# next step
execute if score timer story matches 840.. run tag @e[tag=pesier] remove motion
execute if score timer story matches 840.. store success score timer story run scoreboard players set step story 19