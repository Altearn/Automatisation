### VISITE VESTIAIRE, DIRECTION SAS

# Dialog area
#execute if score timer story matches 1 as @e[tag=dialog_area] at @s run tp @s 42 5 -1 ~5 ~
#execute if score timer story matches 1 as @e[tag=dialog_area] at @s run particle minecraft:totem_of_undying ^ ^ ^1 0.1 0.1 0.1 0 5 force @a[tag=player]
execute if score timer story matches 1 unless entity @e[tag=arrow] run summon item 42 6 -1 {Item:{id:"stick",Count:1,tag:{CustomModelData:6}},Age:-32768,PickupDelay:32767,Glowing:1,Tags:["arrow"],NoGravity:1}
execute if score timer story matches 1 run tp @e[tag=arrow] 42 6 -1

# Init dialog
#execute if score timer story matches 1 at @e[tag=dialog_area] if entity @a[tag=player,distance=..3] run scoreboard players set timer story 2
execute if score timer story matches 1 if block 42 4 -1 minecraft:birch_door[open=true] as @a[tag=player,nbt=!{Inventory:[{id:"minecraft:leather_chestplate"}]}] run give @s minecraft:leather_chestplate{display:{color:16777215,Name:'{"text":"Blouse","italic":false}'},HideFlags:127}
execute if score timer story matches 1 if block 42 4 -1 minecraft:birch_door[open=true] run scoreboard players set timer story -1
execute if score timer story matches -1 as @a[tag=player] if entity @s[nbt={Inventory:[{id:"minecraft:leather_chestplate",Slot:102b}]}] run scoreboard players set timer story 2

# dialog text & actions
execute if score timer story matches -1..80 as @e[tag=pesier] at @s run tp @s 41.07 4.0 1.93 facing entity @p
execute if score timer story matches -1.. as @e[type=item,nbt={Item:{id:"minecraft:leather_chestplate"}}] run data merge entity @s {PickupDelay:0s}

execute if score timer story matches 2 run clear @a[tag=player] leather_chestplate
execute if score timer story matches 2 run replaceitem entity @a[tag=player] armor.chest minecraft:leather_chestplate{display:{color:16777215,Name:'{"text":"Blouse","italic":false}'},HideFlags:127,Enchantments:[{lvl:1s,id:"minecraft:binding_curse"}]}
execute if score timer story matches 2 run kill @e[tag=arrow]

execute if score timer story matches 10 run tellraw @a[tag=player] ["",{"text":"\nMme Pesier :","bold":true,"color":"dark_green"},{"text":" Bien, maintenant que vous êtes changé, on va pouvoir poursuivre la visite."}]
execute if score timer story matches 10 as @a[tag=player] at @s run playsound minecraft:entity.villager.trade master @s
execute if score timer story matches 10 run function scripts:tablette/give

execute if score timer story matches 80 run tag @e[tag=pesier] add motion
execute if score timer story matches 80 run data modify storage minecraft:motion_run Animation set from storage minecraft:motion Animation[3]
execute if score timer story matches 80 run scoreboard players set motion story 1

# next step
execute if score timer story matches 80.. if score motion story matches 0 store success score timer story run scoreboard players set step story 6