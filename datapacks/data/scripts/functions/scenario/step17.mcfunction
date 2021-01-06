### VERIFICATIONS ET TEST

# Dialog area
#execute if score timer story matches 1 as @e[tag=dialog_area] at @s run tp @s 80 7 20 ~5 ~
#execute if score timer story matches 1 as @e[tag=dialog_area] at @s run particle minecraft:totem_of_undying ^ ^ ^1.5 0.1 0.1 0.1 0 5 force @a[tag=player]

# Init dialog
execute if score timer story matches 1 as @a[tag=player] if score @s sign matches 1.. run scoreboard players set timer story 2
execute if score timer story matches 2 run scoreboard players reset @a[tag=player] sign

# dialog text & actions
execute if score timer story matches 10 run tellraw @a[tag=player] ["",{"text":"\nMme Pesier :","bold":true,"color":"dark_green"},{"text":" Bien joué. Dorénavant, il faut programmer le rover avant de l’envoyer en mission."}]
execute if score timer story matches 10 as @a[tag=player] at @s run playsound minecraft:entity.villager.yes master @s

execute if score timer story matches 80 run tellraw @a[tag=player] ["",{"text":"\nMme Pesier :","bold":true,"color":"dark_green"},{"text":" Pour cela, vous avez sur la tablette toutes les informations relatives aux objectifs que le rover doit remplir lors de son voyage sur Mars."}]
execute if score timer story matches 80 as @a[tag=player] at @s run playsound minecraft:entity.villager.trade master @s

execute if score timer story matches 200 run tellraw @a[tag=player] ["",{"text":"\nMme Pesier :","bold":true,"color":"dark_green"},{"text":" Vous devez donc développer un programme permettant au rover d’effectuer ces actions automatiquement, sans aide à distance."}]
execute if score timer story matches 200 as @a[tag=player] at @s run playsound minecraft:entity.villager.trade master @s

execute if score timer story matches 290 run tellraw @a[tag=player] ["",{"text":"\nMme Pesier :","bold":true,"color":"dark_green"},{"text":" Si vous avez des doutes sur les informations, n’hésitez pas à me contacter."}]
execute if score timer story matches 290 as @a[tag=player] at @s run playsound minecraft:entity.villager.trade master @s

execute if score timer story matches 360 run tellraw @a[tag=player] ["",{"text":"\nVous :","bold":true,"color":"red"},{"text":" Je vais faire ça tout de suite, merci."}]
execute if score timer story matches 360 as @a[tag=player] at @s run playsound minecraft:entity.villager.yes master @s

execute if score timer story matches 420 run tellraw @a[tag=player] ["",{"text":"\nMme Pesier :","bold":true,"color":"dark_green"},{"text":" Nous sommes conscients de vos qualités. Ne nous décevez pas."}]
execute if score timer story matches 420 as @a[tag=player] at @s run playsound minecraft:entity.villager.trade master @s

execute if score timer story matches 420 as @a[tag=player] run function scripts:tablette/give

execute if score timer story matches 420 run setblock 83 6 14 minecraft:purpur_stairs[facing=west,half=bottom]
execute if score timer story matches 420 run setblock 83 6 15 minecraft:purpur_stairs[facing=west,half=top]

execute if score timer story matches 420 run summon item 82.6 5.00 15.00 {Item:{id:"stick",Count:1,tag:{CustomModelData:6}},Age:-32768,PickupDelay:32767,Glowing:1,Tags:["arrow"],NoGravity:1}
# next step
execute if score timer story matches 420.. store success score timer story run scoreboard players set step story 18