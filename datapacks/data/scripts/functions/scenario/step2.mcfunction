### VISITE BUREAUX

# dialog text & actions
execute if score timer story matches 10 run tag @a[tag=player] add zone0
execute if score timer story matches 10 run tag @e[tag=pesier] add motion
execute if score timer story matches 10..140 as @e[tag=pesier] at @s run tp @s 20.57 4.0 10.84 facing entity @p

execute if score timer story matches 10 run tellraw @a[tag=player] ["",{"text":"\nMme Pesier :","bold":true,"color":"dark_green"},{"text":" Nous allons commencer par signer votre contrat. Comme cela, nous profiterons pour vous montrer l\u2019espace administratif."}]
execute if score timer story matches 10 as @a[tag=player] at @s run playsound minecraft:entity.villager.trade master @s

execute if score timer story matches 100 run tellraw @a[tag=player] ["",{"text":"\nMme Pesier :","bold":true,"color":"dark_green"},{"text":" Vous avez vu l\u2019accueil, où vous avez croisé M. Cassagne qui vous a demandé de patienter dans un des petits salons d\u2019attente."}]
execute if score timer story matches 100 as @a[tag=player] at @s run playsound minecraft:entity.villager.trade master @s


execute if score timer story matches 170 run data modify storage minecraft:motion_run Animation set from storage minecraft:motion Animation[1]
execute if score timer story matches 170 run scoreboard players set motion story 1


execute if score timer story matches 200 run tellraw @a[tag=player] ["",{"text":"\nMme Pesier :","bold":true,"color":"dark_green"},{"text":" Les pièces suivantes sont des bureaux destinés à la gestion du bâtiment, notamment pour la facturation et la commande des produits."}]
execute if score timer story matches 200 as @a[tag=player] at @s run playsound minecraft:entity.villager.trade master @s

execute if score timer story matches 300 run tellraw @a[tag=player] ["",{"text":"\nMme Pesier :","bold":true,"color":"dark_green"},{"text":" Ici, sur votre droite, vous trouverez la salle de réunion où nous serons souvent amenés à discuter sur le projet en cours."}]
execute if score timer story matches 300 as @a[tag=player] at @s run playsound minecraft:entity.villager.trade master @s

execute if score timer story matches 350 run tellraw @a[tag=player] ["",{"text":"\nMme Pesier :","bold":true,"color":"dark_green"},{"text":" À gauche, c\u2019est l'accès aux sanitaires..."}]
execute if score timer story matches 350 as @a[tag=player] at @s run playsound minecraft:entity.villager.trade master @s

execute if score timer story matches 400 run tellraw @a[tag=player] ["",{"text":"\nMme Pesier :","bold":true,"color":"dark_green"},{"text":" Et plus loin, c'est la salle de repos et de restauration."}]
execute if score timer story matches 400 as @a[tag=player] at @s run playsound minecraft:entity.villager.trade master @s

execute if score timer story matches 450 run tellraw @a[tag=player] ["",{"text":"\nMme Pesier :","bold":true,"color":"dark_green"},{"text":" Maintenant passons à l\u2019étage."}]
execute if score timer story matches 450 as @a[tag=player] at @s run playsound minecraft:entity.villager.yes master @s

# next step
execute if score timer story matches 520.. store success score timer story run scoreboard players set step story 3