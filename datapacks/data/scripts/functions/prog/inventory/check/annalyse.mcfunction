execute as @a[tag=player] unless data entity @s Inventory[{Slot:0b,Count:1b}] if score logs prog matches 0 run scoreboard players set logs prog 2
execute as @a[tag=player] unless data entity @s Inventory[{Slot:0b,Count:1b}] if score logs prog matches 1 run scoreboard players set logs prog 0
execute as @a[tag=player] unless data entity @s Inventory[{Slot:0b,Count:1b}] if score logs prog matches 2 run scoreboard players set logs prog 1
execute as @a[tag=player] unless data entity @s Inventory[{Slot:0b,Count:1b}] if score logs prog matches 0 run tellraw @a[tag=player] ["",{"text":"Journal de données","color":"gold"},{"text":" désactiver","color":"red"}]
execute as @a[tag=player] unless data entity @s Inventory[{Slot:0b,Count:1b}] if score logs prog matches 1 run tellraw @a[tag=player] ["",{"text":"Journal de données","color":"gold"},{"text":" activer","color":"green"}]

execute as @a[tag=player] unless data entity @s Inventory[{Slot:16b,Count:1b}] run scoreboard players set inv_display prog 106
execute as @a[tag=player] unless data entity @s Inventory[{Slot:30b,Count:1b}] run scoreboard players set inv_display prog 107

execute as @a[tag=player] unless data entity @s Inventory[{Slot:9b,Count:1b}] run scoreboard players set inv_display prog 6
execute as @a[tag=player] unless data entity @s Inventory[{Slot:10b,Count:1b}] run scoreboard players set inv_display prog 6
execute as @a[tag=player] unless data entity @s Inventory[{Slot:11b,Count:1b}] run scoreboard players set inv_display prog 6
execute as @a[tag=player] unless data entity @s Inventory[{Slot:12b,Count:1b}] run scoreboard players set inv_display prog 6
execute as @a[tag=player] unless data entity @s Inventory[{Slot:13b,Count:1b}] run scoreboard players set inv_display prog 6
execute as @a[tag=player] unless data entity @s Inventory[{Slot:17b,Count:1b}] run scoreboard players set inv_display prog 6
execute as @a[tag=player] unless data entity @s Inventory[{Slot:25b,Count:1b}] run scoreboard players set inv_display prog 6
execute as @a[tag=player] unless data entity @s Inventory[{Slot:26b,Count:1b}] run scoreboard players set inv_display prog 6
execute as @a[tag=player] unless data entity @s Inventory[{Slot:27b,Count:1b}] run scoreboard players set inv_display prog 6
execute as @a[tag=player] unless data entity @s Inventory[{Slot:28b,Count:1b}] run scoreboard players set inv_display prog 6
execute as @a[tag=player] unless data entity @s Inventory[{Slot:29b,Count:1b}] run scoreboard players set inv_display prog 6
execute as @a[tag=player] unless data entity @s Inventory[{Slot:34b,Count:1b}] run scoreboard players set inv_display prog 6
execute as @a[tag=player] unless data entity @s Inventory[{Slot:35b,Count:1b}] run scoreboard players set inv_display prog 6


execute as @a[tag=player] unless data entity @s Inventory[{Slot:16b,Count:1b}] run clear @a[tag=player] minecraft:gold_ingot{CustomModelData:2000}
execute as @a[tag=player] unless data entity @s Inventory[{Slot:30b,Count:1b}] run clear @a[tag=player] minecraft:gold_ingot{CustomModelData:40}

execute as @a[tag=player] unless data entity @s Inventory[{Slot:13b,Count:1b}] run clear @a[tag=player] minecraft:gold_ingot{CustomModelData:2002}
execute as @a[tag=player] unless data entity @s Inventory[{Slot:27b,Count:1b}] run clear @a[tag=player] minecraft:gold_ingot{CustomModelData:2006}
execute as @a[tag=player] unless data entity @s Inventory[{Slot:28b,Count:1b}] run clear @a[tag=player] minecraft:gold_ingot{CustomModelData:2003}
execute as @a[tag=player] unless data entity @s Inventory[{Slot:29b,Count:1b}] run clear @a[tag=player] minecraft:gold_ingot{CustomModelData:2005}
execute as @a[tag=player] unless data entity @s Inventory[{Slot:35b,Count:1b}] run clear @a[tag=player] minecraft:gold_ingot{CustomModelData:3003}

execute as @a[tag=player] unless data entity @s Inventory[{Slot:7b,Count:1b}] run scoreboard players set inv_display prog 200
execute as @a[tag=player] unless data entity @s Inventory[{Slot:8b,Count:1b}] run scoreboard players set inv_display prog 201
execute as @a[tag=player] unless data entity @s Inventory[{Slot:7b,Count:1b}] run clear @a[tag=player] minecraft:gold_ingot{CustomModelData:10000}
execute as @a[tag=player] unless data entity @s Inventory[{Slot:8b,Count:1b}] run clear @a[tag=player] minecraft:gold_ingot{CustomModelData:10001}

execute as @a[tag=player] unless data entity @s Inventory[{Slot:0b,Count:1b}] run scoreboard players set inv_display prog 6
execute as @a[tag=player] unless data entity @s Inventory[{Slot:0b,Count:1b}] run clear @a[tag=player] minecraft:book{CustomModelData:10000}


execute as @a[tag=player] if data entity @s Inventory[{Slot:1b}] run scoreboard players set inv_display prog 6
execute as @a[tag=player] if data entity @s Inventory[{Slot:2b}] run scoreboard players set inv_display prog 6
execute as @a[tag=player] if data entity @s Inventory[{Slot:3b}] run scoreboard players set inv_display prog 6
execute as @a[tag=player] if data entity @s Inventory[{Slot:4b}] run scoreboard players set inv_display prog 6
execute as @a[tag=player] if data entity @s Inventory[{Slot:5b}] run scoreboard players set inv_display prog 6
execute as @a[tag=player] if data entity @s Inventory[{Slot:6b}] run scoreboard players set inv_display prog 6
execute as @a[tag=player] if data entity @s Inventory[{Slot:14b}] run scoreboard players set inv_display prog 6
execute as @a[tag=player] if data entity @s Inventory[{Slot:15b}] run scoreboard players set inv_display prog 6
execute as @a[tag=player] if data entity @s Inventory[{Slot:18b}] run scoreboard players set inv_display prog 6
execute as @a[tag=player] if data entity @s Inventory[{Slot:19b}] run scoreboard players set inv_display prog 6
execute as @a[tag=player] if data entity @s Inventory[{Slot:20b}] run scoreboard players set inv_display prog 6
execute as @a[tag=player] if data entity @s Inventory[{Slot:21b}] run scoreboard players set inv_display prog 6
execute as @a[tag=player] if data entity @s Inventory[{Slot:22b}] run scoreboard players set inv_display prog 6
execute as @a[tag=player] if data entity @s Inventory[{Slot:23b}] run scoreboard players set inv_display prog 6
execute as @a[tag=player] if data entity @s Inventory[{Slot:24b}] run scoreboard players set inv_display prog 6
execute as @a[tag=player] if data entity @s Inventory[{Slot:31b}] run scoreboard players set inv_display prog 6
execute as @a[tag=player] if data entity @s Inventory[{Slot:32b}] run scoreboard players set inv_display prog 6
execute as @a[tag=player] if data entity @s Inventory[{Slot:33b}] run scoreboard players set inv_display prog 6