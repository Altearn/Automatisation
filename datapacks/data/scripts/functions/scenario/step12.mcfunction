### VERIFICATIONS ET TEST

# Dialog area
execute if score timer story matches 1 as @e[tag=dialog_area] at @s run tp @s 73 7 -8 ~5 ~
execute if score timer story matches 1 as @e[tag=dialog_area] at @s run particle minecraft:totem_of_undying ^ ^ ^1.5 0.1 0.1 0.1 0 5 force @a[tag=player]

# Init dialog
execute if score timer story matches 1 positioned 73 5 -8 if entity @a[tag=player,distance=..3] run scoreboard players set timer story 2
# Wait for the end of the animation
execute if score timer story matches 2.. positioned 72.2 4.0 -9 unless entity @e[tag=duriff,tag=!loop_motion_0,distance=..0.5] run scoreboard players set timer story 2
execute if score timer story matches 2.. positioned 72.2 4.0 -9 unless entity @e[tag=duriff,tag=!loop_motion_0,distance=..0.5] run title @a[tag=player] actionbar {"text":"Veuillez attendre que M Duriff ai finis son inspection du rover.","color":"gold"}
#execute if score timer story matches 1.. positioned 72.2 4.0 -9 as @e[tag=duriff,tag=loop_motion_0,distance=..0.5] run tp @s 72.2 4.0 -8.7 180 0
execute if score timer story matches 1.. positioned 72.2 4.0 -9 as @e[tag=duriff,tag=loop_motion_0,distance=..0.5] run tag @s remove loop_motion_0

# dialog text & actions
execute if score timer story matches 1.. as @e[tag=duriff,tag=!loop_motion_0] at @s run tp @s ~ ~ ~ facing entity @p

execute if score timer story matches 10 at @e[tag=rover,limit=1,tag=!base] run tp @e[tag=villager1] ^0.5 ^ ^1
execute if score timer story matches 10 at @e[tag=rover,limit=1,tag=!base] run tp @e[tag=villager2] ^0.5 ^ ^
execute if score timer story matches 10 at @e[tag=rover,limit=1,tag=!base] run tp @e[tag=villager3] ^0.5 ^ ^-1
execute if score timer story matches 10 at @e[tag=rover,limit=1,tag=!base] run tp @e[tag=villager4] ^-0.5 ^ ^1
execute if score timer story matches 10 at @e[tag=rover,limit=1,tag=!base] run tp @e[tag=villager5] ^-0.5 ^ ^
execute if score timer story matches 10 at @e[tag=rover,limit=1,tag=!base] run tp @e[tag=villager6] ^-0.5 ^ ^-1

execute if score timer story matches 10 run tellraw @a[tag=player] ["",{"text":"\nVous :","bold":true,"color":"red"},{"text":" Bonjour, après une vérification des modules du rover, il semble que les pannneaux solaires soient manquant."}]
execute if score timer story matches 10 as @a[tag=player] at @s run playsound minecraft:entity.villager.trade master @s

execute if score timer story matches 90 run tellraw @a[tag=player] ["",{"text":"\nM Duriff :","bold":true,"color":"dark_aqua"},{"text":" Bonjour, le rover n'est effectivement pas complètement assemblé."}]
execute if score timer story matches 90 as @a[tag=player] at @s run playsound minecraft:entity.villager.trade master @s

execute if score timer story matches 160 run tellraw @a[tag=player] ["",{"text":"\nM Duriff :","bold":true,"color":"dark_aqua"},{"text":" Les panneaux solaires se trouvent dans les étagères à côté, je vous laisse les installer."}]
execute if score timer story matches 160 as @a[tag=player] at @s run playsound minecraft:entity.villager.trade master @s

execute if score timer story matches 160 as @a[tag=player] run function scripts:tablette/give

# next step
execute if score timer story matches 160.. store success score timer story run scoreboard players set step story 13