### ACCUEIL

# Dialog area
execute if score timer story matches 1 as @e[tag=dialog_area] at @s run tp @s 18 6 -1 ~5 ~
execute if score timer story matches 1 as @e[tag=dialog_area] at @s run particle minecraft:totem_of_undying ^ ^ ^6 0.1 0.1 0.1 0 5 force @a[tag=player]

# Init dialog
execute if score timer story matches 1 at @e[tag=dialog_area] if entity @a[tag=player,distance=..6] run scoreboard players set timer story 2

# dialog text & actions
execute if score timer story matches 10.. as @e[tag=cassagne] at @s run tp @s ~ ~ ~ facing entity @p
execute if score timer story matches 10 run tellraw @a[tag=player] ["",{"text":"\nVous :","bold":true,"color":"red"},{"text":" Bonjour monsieur, je suis le nouveau programmeur\u2026 J\u2019ai rendez-vous avec Madame Pesier pour mon premier jour."}]
execute if score timer story matches 10 as @a[tag=player] at @s run playsound minecraft:entity.villager.trade master @s

execute if score timer story matches 100 run tellraw @a[tag=player] ["",{"text":"\nAgent d'accueil :","bold":true,"color":"light_purple"},{"text":" Bonjour \u2026, nous vous attendions. Je la préviens de votre arrivée. Pouvez-vous patienter dans le petit salon sur votre droite s\u2019il vous plaît ?"}]
execute if score timer story matches 100 as @a[tag=player] at @s run playsound minecraft:entity.villager.trade master @s

execute if score timer story matches 200 run tellraw @a[tag=player] ["",{"text":"\nVous :","bold":true,"color":"red"},{"text":" D\u2019accord, merci beaucoup."}]
execute if score timer story matches 200 as @a[tag=player] at @s run playsound minecraft:entity.villager.yes master @s

execute if score timer story matches 240 run tellraw @a[tag=player] ["",{"text":"\nAgent d'accueil :","bold":true,"color":"light_purple"},{"text":" Je vous en prie."}]
execute if score timer story matches 240 as @a[tag=player] at @s run playsound minecraft:entity.villager.yes master @s
execute if score timer story matches 240 as @e[tag=cassagne] at @s run tp @s ~ ~ ~ 90 0

# next step
execute if score timer story matches 240.. store success score timer story run scoreboard players set step story 1
