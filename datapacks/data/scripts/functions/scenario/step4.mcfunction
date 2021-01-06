### DIRECTION VESTIAIRE

# dialog text & actions
execute if score timer story matches 1..60 as @e[tag=pesier] at @s run tp @s 18.44 11.0 43.26 facing entity @p

execute as @a[tag=player] if score @s sign matches 1 run function scripts:tablette/give
execute as @a[tag=player] if score @s sign matches 1 run scoreboard players set timer story 2
execute if score timer story matches 2 run scoreboard players reset @a[tag=player] sign

execute if score timer story matches 10 run tag @a[tag=player] add zone1
execute if score timer story matches 10 run tellraw @a[tag=player] ["",{"text":"\nMme Pesier :","bold":true,"color":"dark_green"},{"text":" Bien, nous allons passer sur la partie laboratoire qui commence derrière l\u2019accueil."}]
execute if score timer story matches 10 as @a[tag=player] at @s run playsound minecraft:entity.villager.trade master @s

execute if score timer story matches 60 run tag @e[tag=pesier] add motion
execute if score timer story matches 60 run data modify storage minecraft:motion_run Animation set from storage minecraft:motion Animation[2]
execute if score timer story matches 60 run scoreboard players set motion story 1

# next step
execute if score timer story matches 60.. if score motion story matches 0 store success score timer story run scoreboard players set step story 5