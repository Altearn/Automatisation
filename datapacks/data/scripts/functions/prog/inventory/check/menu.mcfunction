execute if score level_prog story matches 0 unless data block 83 5 14 Items[{Slot:13b}] run scoreboard players set On prog 1
execute if score level_prog story matches 0..1 unless data block 83 5 14 Items[{Slot:15b}] run scoreboard players set On prog 1
execute if score level_prog story matches 0..2 unless data block 83 5 15 Items[{Slot:2b}] run scoreboard players set On prog 1
execute if score level_prog story matches 0..3 unless data block 83 5 15 Items[{Slot:4b}] run scoreboard players set On prog 1
execute if score level_prog story matches 0..4 unless data block 83 5 15 Items[{Slot:6b}] run scoreboard players set On prog 1

execute unless data block 83 5 14 Items[{Slot:11b}] run scoreboard players set On prog 2
execute if score level_prog story matches 1.. unless data block 83 5 14 Items[{Slot:13b}] run scoreboard players set On prog 3
execute if score level_prog story matches 2.. unless data block 83 5 14 Items[{Slot:15b}] run scoreboard players set On prog 5
execute if score level_prog story matches 3.. unless data block 83 5 15 Items[{Slot:2b}] run scoreboard players set On prog 6
execute if score level_prog story matches 4.. unless data block 83 5 15 Items[{Slot:4b}] run scoreboard players set On prog 7
execute if score level_prog story matches 5.. unless data block 83 5 15 Items[{Slot:6b}] run scoreboard players set On prog 8

execute unless data block 83 5 14 Items[{Slot:11b}] run function scripts:prog/inventory/clear/clear_all
execute unless data block 83 5 14 Items[{Slot:13b}] run function scripts:prog/inventory/clear/clear_all
execute unless data block 83 5 14 Items[{Slot:15b}] run function scripts:prog/inventory/clear/clear_all
execute unless data block 83 5 15 Items[{Slot:2b}] run function scripts:prog/inventory/clear/clear_all
execute unless data block 83 5 15 Items[{Slot:4b}] run function scripts:prog/inventory/clear/clear_all
execute unless data block 83 5 15 Items[{Slot:6b}] run function scripts:prog/inventory/clear/clear_all

execute unless data block 83 5 14 Items[{Slot:11b}] run clear @a[tag=player] minecraft:gold_ingot{CustomModelData:3000}
execute unless data block 83 5 14 Items[{Slot:13b}] run clear @a[tag=player] minecraft:gold_ingot{CustomModelData:3000}
execute unless data block 83 5 14 Items[{Slot:15b}] run clear @a[tag=player] minecraft:gold_ingot{CustomModelData:3000}
execute unless data block 83 5 15 Items[{Slot:2b}] run clear @a[tag=player] minecraft:gold_ingot{CustomModelData:3000}
execute unless data block 83 5 15 Items[{Slot:4b}] run clear @a[tag=player] minecraft:gold_ingot{CustomModelData:3000}
execute unless data block 83 5 15 Items[{Slot:6b}] run clear @a[tag=player] minecraft:gold_ingot{CustomModelData:3000}
execute unless data block 83 5 14 Items[{Slot:11b}] run clear @a[tag=player] minecraft:gold_ingot{CustomModelData:3000}
execute unless data block 83 5 14 Items[{Slot:13b}] run clear @a[tag=player] minecraft:gold_ingot{CustomModelData:3001}
execute unless data block 83 5 14 Items[{Slot:15b}] run clear @a[tag=player] minecraft:gold_ingot{CustomModelData:3001}
execute unless data block 83 5 15 Items[{Slot:2b}] run clear @a[tag=player] minecraft:gold_ingot{CustomModelData:3001}
execute unless data block 83 5 15 Items[{Slot:4b}] run clear @a[tag=player] minecraft:gold_ingot{CustomModelData:3001}
execute unless data block 83 5 15 Items[{Slot:6b}] run clear @a[tag=player] minecraft:gold_ingot{CustomModelData:3001}