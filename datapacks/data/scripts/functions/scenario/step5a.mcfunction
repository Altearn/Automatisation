### VISITE VESTIAIRE, DIRECTION SAS

# Dialog area
execute if score timer story matches 1 as @e[tag=dialog_area] at @s run tp @s 41 5 2 ~5 ~
execute if score timer story matches 1 as @e[tag=dialog_area] at @s run particle minecraft:totem_of_undying ^ ^ ^2.5 0.1 0.1 0.1 0 5 force @a[tag=player]

# Init dialog
execute if score timer story matches 1 at @e[tag=dialog_area] if entity @a[tag=player,distance=..3] run scoreboard players set timer story 2

# dialog text & actions
execute if score timer story matches 1..40 as @e[tag=pesier] at @s run tp @s 41.07 4.0 1.93 facing entity @p

execute if score timer story matches 10 run tellraw @a[tag=player] ["",{"text":"\nMme Pesier :","bold":true,"color":"dark_green"},{"text":" Cette première partie est le vestiaire où vous devrez vous changer pour mettre une tenue adéquate avant d\u2019accéder au laboratoire."}]
execute if score timer story matches 10 as @a[tag=player] at @s run playsound minecraft:entity.villager.trade master @s

execute if score timer story matches 10 run function scripts:tablette/give

# next step
execute if score timer story matches 40.. if score motion story matches 0 store success score timer story run scoreboard players set step story 51