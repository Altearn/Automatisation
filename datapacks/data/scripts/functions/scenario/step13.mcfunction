### VERIFICATIONS ET TEST

# Init dialog
execute if score timer story matches 1 as @a[tag=player] if score @s talk_villager matches 1.. if entity @s[nbt={SelectedItem:{id:"minecraft:daylight_detector"}}] run tag @s add temp_solar

execute if score timer story matches 1 as @a[tag=player,tag=temp_solar] run scoreboard players add solar_panel general 1
execute if score timer story matches 1 as @a[tag=player,tag=temp_solar] run replaceitem entity @s weapon.mainhand air
execute if score timer story matches 1 as @a[tag=player,tag=temp_solar] run scoreboard players reset @s talk_villager
execute if score timer story matches 1 as @a[tag=player,tag=temp_solar] if score solar_panel general matches 1 as @e[tag=rover,tag=body] run data modify entity @s ArmorItems[3].tag.CustomModelData set value 16
execute if score timer story matches 1 as @a[tag=player,tag=temp_solar] if score solar_panel general matches 2 as @e[tag=rover,tag=body] run data modify entity @s ArmorItems[3].tag.CustomModelData set value 17
execute if score timer story matches 1 as @a[tag=player,tag=temp_solar] run tag @s remove temp_solar

execute if score timer story matches 1 if score solar_panel general matches 2 run scoreboard players set timer story 2
execute if score timer story matches 1.. as @a[tag=player] if score @s talk_villager matches 1.. run scoreboard players reset @s talk_villager

# dialog text & actions
execute if score timer story matches 1.. as @e[tag=duriff] at @s run tp @s ~ ~ ~ facing entity @p

execute if score timer story matches 10 run tellraw @a[tag=player] ["",{"text":"\nM Duriff :","bold":true,"color":"dark_aqua"},{"text":" Si vous pensez que les panneaux solaires sont bien installé, je vous laisse retourner au pc pour relancer la vérification."}]
execute if score timer story matches 10 as @a[tag=player] at @s run playsound minecraft:entity.villager.trade master @s

execute if score timer story matches 10 as @e[tag=villager] at @s run tp @s 0 200 0
execute if score timer story matches 10 as @e[tag=duriff] at @s run tp @s 72.2 4.0 -8.7 180 0
#execute if score timer story matches 10 as @e[tag=duriff] at @s run tag @s add loop_motion_0
execute if score timer story matches 10 as @a[tag=player] run function scripts:tablette/give

# next step
execute if score timer story matches 10.. store success score timer story run scoreboard players set step story 14