### VISITE ETAGE + TABLETTE

# Dialog area
execute if score timer story matches 1 as @e[tag=dialog_area] at @s run tp @s 18 14 44 ~5 ~
execute if score timer story matches 1 as @e[tag=dialog_area] at @s run particle minecraft:totem_of_undying ^ ^ ^5 0.1 0.1 0.1 0 5 force @a[tag=player]

# Init dialog
execute if score timer story matches 1 at @e[tag=dialog_area] if entity @a[tag=player,distance=..5] run scoreboard players set timer story 2

# dialog text & actions
execute if score timer story matches 1.. as @e[tag=pesier] at @s run tp @s 18.44 11.0 43.26 facing entity @p

execute if score timer story matches 10 run tellraw @a[tag=player] ["",{"text":"\nMme Pesier :","bold":true,"color":"dark_green"},{"text":" Nous arrivons sur l\u2019open space où vous aurez votre bureau. Cet espace permet une meilleure communication et un réel travail en collaboration avec tous les domaines d\u2019action du laboratoire."}]
execute if score timer story matches 10 as @a[tag=player] at @s run playsound minecraft:entity.villager.trade master @s

execute if score timer story matches 160 run tellraw @a[tag=player] ["",{"text":"\nMme Pesier :","bold":true,"color":"dark_green"},{"text":" Avez-vous des questions sur cette première partie ?"}]
execute if score timer story matches 160 as @a[tag=player] at @s run playsound minecraft:entity.villager.trade master @s

execute if score timer story matches 220 run tellraw @a[tag=player] ["",{"text":"\nVous :","bold":true,"color":"red"},{"text":" Y a-t-il un document où les informations importantes sont listées ?"}]
execute if score timer story matches 220 as @a[tag=player] at @s run playsound minecraft:entity.villager.trade master @s

execute if score timer story matches 280 run tellraw @a[tag=player] ["",{"text":"\nMme Pesier :","bold":true,"color":"dark_green"},{"text":" Ah oui ! J\u2019allais oublier, tenez."}]
execute if score timer story matches 280 as @a[tag=player] at @s run playsound minecraft:entity.villager.yes master @s

execute if score timer story matches 300 run replaceitem entity @e[tag=pesier,limit=1] weapon.mainhand book{CustomModelData:1}

execute if score timer story matches 320 run tellraw @a[tag=player] ["",{"text":"\nMme Pesier :","bold":true,"color":"dark_green"},{"text":" Cette petite tablette contient des informations et vous servira pour pas mal de choses : prise de note, demande d\u2019assistance, communication avec vos collègues et pour signer votre contrat qui est aussi dessus."}]
execute if score timer story matches 320 as @a[tag=player] at @s run playsound minecraft:entity.villager.yes master @s

execute if score timer story matches 480 as @a[tag=player] run function scripts:tablette/give
execute if score timer story matches 480 run data merge entity @e[tag=pesier,limit=1] {HandItems:[{},{}]}
execute if score timer story matches 480 run tellraw @a[tag=player] ["",{"text":"\nVous :","bold":true,"color":"red"},{"text":" Merci beaucoup."}]
execute if score timer story matches 480 as @a[tag=player] at @s run playsound minecraft:entity.villager.yes master @s
execute if score timer story matches 480 run scoreboard players enable @a[tag=player] sign

# next step
execute if score timer story matches 480.. store success score timer story run scoreboard players set step story 4