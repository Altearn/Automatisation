### VISITE SALLE D'ASSEMBLAGE

# Dialog area
execute if score timer story matches 1 as @e[tag=dialog_area] at @s run tp @s 86 10 16 ~5 ~
execute if score timer story matches 1 as @e[tag=dialog_area] at @s run particle minecraft:totem_of_undying ^ ^ ^2.3 0.1 0.1 0.1 0 5 force @a[tag=player]

# Init dialog
execute if score timer story matches 1 at @e[tag=dialog_area] if entity @a[tag=player,distance=..3] run scoreboard players set timer story 2

# dialog text & actions
execute if score timer story matches 1..750 as @e[tag=pesier] at @s run tp @s 87.49 9.0 15.39 facing entity @p

execute if score timer story matches 20 run tellraw @a[tag=player] ["",{"text":"\nMme Pesier :","bold":true,"color":"dark_green"},{"text":" Enfin, vous avez ici la vue sur la salle d\u2019assemblage du rover."}]
execute if score timer story matches 20 as @a[tag=player] at @s run playsound minecraft:entity.villager.trade master @s

execute if score timer story matches 80 run tellraw @a[tag=player] ["",{"text":"\nMme Pesier :","bold":true,"color":"dark_green"},{"text":" Il est assemblé et programmé dans cette salle hermétique et totalement vidée de toutes particules ou poussières."}]
execute if score timer story matches 80 as @a[tag=player] at @s run playsound minecraft:entity.villager.trade master @s

execute if score timer story matches 170 run tellraw @a[tag=player] ["",{"text":"\nMme Pesier :","bold":true,"color":"dark_green"},{"text":" L\u2019assemblage est contrôlé de manière semi-automatique via le poste de programmation en dessous."}]
execute if score timer story matches 170 as @a[tag=player] at @s run playsound minecraft:entity.villager.trade master @s

execute if score timer story matches 250 run tellraw @a[tag=player] ["",{"text":"\nMme Pesier :","bold":true,"color":"dark_green"},{"text":" C\u2019est dans celui-ci que vous allez commencer à appréhender le Rover."}]
execute if score timer story matches 250 as @a[tag=player] at @s run playsound minecraft:entity.villager.trade master @s

execute if score timer story matches 320 run tellraw @a[tag=player] ["",{"text":"\nMme Pesier :","bold":true,"color":"dark_green"},{"text":" Après ce tour de présentations, avez-vous des questions supplémentaires à propos du laboratoire ?"}]
execute if score timer story matches 320 as @a[tag=player] at @s run playsound minecraft:entity.villager.trade master @s

execute if score timer story matches 400 run tellraw @a[tag=player] ["",{"text":"\nVous :","bold":true,"color":"red"},{"text":" Si j\u2019ai des doutes ou des questions concernant ma mission, comment puis-je avoir de l\u2019aide ?"}]
execute if score timer story matches 400 as @a[tag=player] at @s run playsound minecraft:entity.villager.trade master @s

execute if score timer story matches 480 run tellraw @a[tag=player] ["",{"text":"\nMme Pesier :","bold":true,"color":"dark_green"},{"text":" Comme je vous l\u2019ai dit, n'hésitez pas à utiliser votre tablette."}]
execute if score timer story matches 480 as @a[tag=player] at @s run playsound minecraft:entity.villager.yes master @s

execute if score timer story matches 540 run tellraw @a[tag=player] ["",{"text":"\nVous :","bold":true,"color":"red"},{"text":" Ah oui c\u2019est vrai !"}]
execute if score timer story matches 540 as @a[tag=player] at @s run playsound minecraft:entity.villager.yes master @s

execute if score timer story matches 590 run tellraw @a[tag=player] ["",{"text":"\nMme Pesier :","bold":true,"color":"dark_green"},{"text":" Vous pouvez commencer par effectuer les vérifications des différents modules du Rover."}]
execute if score timer story matches 590 as @a[tag=player] at @s run playsound minecraft:entity.villager.trade master @s

execute if score timer story matches 660 run tellraw @a[tag=player] ["",{"text":"\nMme Pesier :","bold":true,"color":"dark_green"},{"text":" D\u2019ailleurs, si vous avez besoin d\u2019agir physiquement sur celui-ci, il y a un sas dans le poste de programmation."}]
execute if score timer story matches 660 as @a[tag=player] at @s run playsound minecraft:entity.villager.trade master @s

execute if score timer story matches 770 run tellraw @a[tag=player] ["",{"text":"\nMme Pesier :","bold":true,"color":"dark_green"},{"text":" Les instructions concernant son utilisation sont aussi enregistrées dans votre tablette. Je vous laisse, je retourne à mon bureau."}]
execute if score timer story matches 770 as @a[tag=player] at @s run playsound minecraft:entity.villager.trade master @s
execute if score timer story matches 770 as @a[tag=player] run function scripts:tablette/give

execute if score timer story matches 860 run tellraw @a[tag=player] ["",{"text":"\nVous :","bold":true,"color":"red"},{"text":" Merci à tout à l\u2019heure."}]
execute if score timer story matches 860 as @a[tag=player] at @s run playsound minecraft:entity.villager.yes master @s


execute if score timer story matches 920 run tag @e[tag=pesier] add motion
execute if score timer story matches 920 run data modify storage minecraft:motion_run Animation set from storage minecraft:motion Animation[7]
execute if score timer story matches 920 run scoreboard players set motion story 1

execute if score timer story matches 920 run tag @a[tag=player] add zone2

# next step
execute if score timer story matches 920.. store success score timer story run scoreboard players set step story 10