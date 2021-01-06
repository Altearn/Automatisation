execute as @a[tag=player] unless data entity @s Inventory[{Slot:9b,Count:1b}] if score prog_step prog matches 2 run scoreboard players set inv_display prog 2
execute as @a[tag=player] unless data entity @s Inventory[{Slot:9b,Count:1b}] if score prog_step prog matches 3 run scoreboard players set inv_display prog 3
execute as @a[tag=player] unless data entity @s Inventory[{Slot:9b,Count:1b}] if score prog_step prog matches 4 run scoreboard players set inv_display prog 4
execute as @a[tag=player] unless data entity @s Inventory[{Slot:9b,Count:1b}] if score prog_step prog matches 5 run scoreboard players set inv_display prog 5
execute as @a[tag=player] unless data entity @s Inventory[{Slot:9b,Count:1b}] if score prog_step prog matches 6 run scoreboard players set inv_display prog 6
execute as @a[tag=player] unless data entity @s Inventory[{Slot:9b,Count:1b}] if score prog_step prog matches 7 run scoreboard players set inv_display prog 7
execute as @a[tag=player] unless data entity @s Inventory[{Slot:9b,Count:1b}] if score prog_step prog matches 8 run scoreboard players set inv_display prog 8

execute as @a[tag=player] unless data entity @s Inventory[{Slot:18b,Count:1b}] run scoreboard players set inv_display prog 103
execute as @a[tag=player] unless data entity @s Inventory[{Slot:20b,Count:1b}] run scoreboard players set inv_display prog 103
execute as @a[tag=player] unless data entity @s Inventory[{Slot:22b,Count:1b}] run scoreboard players set inv_display prog 103
execute as @a[tag=player] unless data entity @s Inventory[{Slot:24b,Count:1b}] run scoreboard players set inv_display prog 103
execute as @a[tag=player] unless data entity @s Inventory[{Slot:26b,Count:1b}] run scoreboard players set inv_display prog 103

execute as @a[tag=player] unless data entity @s Inventory[{Slot:9b,Count:1b}] run clear @a[tag=player] minecraft:gold_ingot{CustomModelData:4000}
execute as @a[tag=player] if score prog_step prog matches 8 unless data entity @s Inventory[{Slot:22b,Count:1b}] run clear @a[tag=player] minecraft:gold_ingot{CustomModelData:3001}

execute as @a[tag=player] if data entity @s Inventory[{Slot:0b}] run scoreboard players set inv_display prog 103
execute as @a[tag=player] if data entity @s Inventory[{Slot:1b}] run scoreboard players set inv_display prog 103
execute as @a[tag=player] if data entity @s Inventory[{Slot:2b}] run scoreboard players set inv_display prog 103
execute as @a[tag=player] if data entity @s Inventory[{Slot:3b}] run scoreboard players set inv_display prog 103
execute as @a[tag=player] if data entity @s Inventory[{Slot:4b}] run scoreboard players set inv_display prog 103
execute as @a[tag=player] if data entity @s Inventory[{Slot:5b}] run scoreboard players set inv_display prog 103
execute as @a[tag=player] if data entity @s Inventory[{Slot:6b}] run scoreboard players set inv_display prog 103
execute as @a[tag=player] if data entity @s Inventory[{Slot:7b}] run scoreboard players set inv_display prog 103
execute as @a[tag=player] if data entity @s Inventory[{Slot:8b}] run scoreboard players set inv_display prog 103
execute as @a[tag=player] if data entity @s Inventory[{Slot:10b}] run scoreboard players set inv_display prog 103
execute as @a[tag=player] if data entity @s Inventory[{Slot:11b}] run scoreboard players set inv_display prog 103
execute as @a[tag=player] if data entity @s Inventory[{Slot:12b}] run scoreboard players set inv_display prog 103
execute as @a[tag=player] if data entity @s Inventory[{Slot:13b}] run scoreboard players set inv_display prog 103
execute as @a[tag=player] if data entity @s Inventory[{Slot:14b}] run scoreboard players set inv_display prog 103
execute as @a[tag=player] if data entity @s Inventory[{Slot:15b}] run scoreboard players set inv_display prog 103
execute as @a[tag=player] if data entity @s Inventory[{Slot:16b}] run scoreboard players set inv_display prog 103
execute as @a[tag=player] if data entity @s Inventory[{Slot:17b}] run scoreboard players set inv_display prog 103
execute as @a[tag=player] if data entity @s Inventory[{Slot:19b}] run scoreboard players set inv_display prog 103
execute as @a[tag=player] if data entity @s Inventory[{Slot:21b}] run scoreboard players set inv_display prog 103
execute as @a[tag=player] if data entity @s Inventory[{Slot:23b}] run scoreboard players set inv_display prog 103
execute as @a[tag=player] if data entity @s Inventory[{Slot:25b}] run scoreboard players set inv_display prog 103
execute as @a[tag=player] if data entity @s Inventory[{Slot:27b}] run scoreboard players set inv_display prog 103
execute as @a[tag=player] if data entity @s Inventory[{Slot:28b}] run scoreboard players set inv_display prog 103
execute as @a[tag=player] if data entity @s Inventory[{Slot:29b}] run scoreboard players set inv_display prog 103
execute as @a[tag=player] if data entity @s Inventory[{Slot:30b}] run scoreboard players set inv_display prog 103
execute as @a[tag=player] if data entity @s Inventory[{Slot:31b}] run scoreboard players set inv_display prog 103
execute as @a[tag=player] if data entity @s Inventory[{Slot:32b}] run scoreboard players set inv_display prog 103
execute as @a[tag=player] if data entity @s Inventory[{Slot:33b}] run scoreboard players set inv_display prog 103
execute as @a[tag=player] if data entity @s Inventory[{Slot:34b}] run scoreboard players set inv_display prog 103
execute as @a[tag=player] if data entity @s Inventory[{Slot:35b}] run scoreboard players set inv_display prog 103
