### VERIFICATIONS ET TEST

# Dialog area
execute if score timer story matches 1 as @e[tag=dialog_area] at @s run tp @s 80 7 23 ~5 ~
execute if score timer story matches 1 as @e[tag=dialog_area] at @s run particle minecraft:totem_of_undying ^ ^ ^1.5 0.1 0.1 0.1 0 5 force @a[tag=player]

# Init dialog
execute if score timer story matches 1 positioned 80 5 23 if entity @a[tag=player,distance=..2] run scoreboard players set timer story 2

# dialog text & actions
execute if score timer story matches 2..150 as @e[tag=lussier] at @s run tp @s ~ ~ ~ facing entity @p
execute if score timer story matches 2 run data modify block 82 4 25 SpawnData.ArmorItems[3].tag.CustomModelData set value 4


execute if score timer story matches 20 run tellraw @a[tag=player] ["",{"text":"\nM Lussier :","bold":true,"color":"gold"},{"text":" Bonjour, je suis responsable de la phase de test en laboratoire. Je vais vous accompagner lors de cette étape cruciale avant la procédure finale en milieu simulé."}]
execute if score timer story matches 20 as @a[tag=player] at @s run playsound minecraft:entity.villager.trade master @s

execute if score timer story matches 150 run tellraw @a[tag=player] ["",{"text":"\nM Lussier :","bold":true,"color":"gold"},{"text":" Pour effectuer les vérifications sur le rover, il vous suffit de faire un clic droit sur l’ordinateur à votre gauche. L’écran est tactile."}]
execute if score timer story matches 150 as @a[tag=player] at @s run playsound minecraft:entity.villager.trade master @s

execute if score timer story matches 250 run tellraw @a[tag=player] ["",{"text":"\nVous :","bold":true,"color":"red"},{"text":" Merci beaucoup."}]
execute if score timer story matches 250 as @a[tag=player] at @s run playsound minecraft:entity.villager.yes master @s

execute if score timer story matches 280 run data modify block 82 4 25 SpawnData.ArmorItems[3].tag.CustomModelData set value 3
execute if score timer story matches 280 as @e[tag=lussier] at @s run tp @s ~ ~ ~ -90 0
execute if score timer story matches 280 run tp @e[tag=villager1] 83.50 4.50 19.00
execute if score timer story matches 280 at @e[tag=villager1] run summon item ~ ~1 ~ {Item:{id:"stick",Count:1,tag:{CustomModelData:6}},Age:-32768,PickupDelay:32767,Glowing:1,Tags:["arrow"],NoGravity:1}
execute if score timer story matches 280 as @a[tag=player] run function scripts:tablette/give

# next step
execute if score timer story matches 280.. store success score timer story run scoreboard players set step story 11