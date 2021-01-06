### TEST FINAL
execute unless score rover_anim story = rover_anim story run scoreboard players set rover_anim story 0

# Dialog area
execute if score timer story matches 1 as @e[tag=dialog_area] at @s if score rover_anim story matches 0 run tp @s 88 11 23 ~5 ~
execute if score timer story matches 1 as @e[tag=dialog_area] at @s if score rover_anim story matches 0 run particle minecraft:totem_of_undying ^ ^ ^2.5 0.1 0.1 0.1 0 5 force @a[tag=player]

# Init dialog
execute if score timer story matches 1 at @e[tag=dialog_area] if entity @a[tag=player,distance=..4] if score rover_anim story matches 0 store success score rover_anim story run scoreboard players set timer story 2

# dialog text & actions
execute if score timer story matches 1 as @e[tag=pesier] at @s if score rover_anim story matches 0 run tp @s ~ ~ ~ facing entity @p
execute if score timer story matches 1 as @e[tag=pesier] at @s if score rover_anim story matches 6 run tp @s ~ ~ ~ facing entity @p
execute if score timer story matches 2.. as @e[tag=pesier] at @s unless score rover_anim story matches 0 run tp @s ~ ~ ~ facing entity @e[tag=rover,limit=1,sort=nearest]

# Animation rover
#1
execute if score timer story matches 10 if score rover_anim story matches 1 run clone 65 4 -44 68 7 -41 99 4 -5
execute if score timer story matches 30 if score rover_anim story matches 1 run clone 58 4 -44 61 7 -41 99 4 -5
execute if score timer story matches 60 if score rover_anim story matches 1 run tag @e[tag=rover] add motion
execute if score timer story matches 60 if score rover_anim story matches 1 run data modify storage minecraft:motion_run Animation set from storage minecraft:motion Animation[9]
execute if score timer story matches 60 if score rover_anim story matches 1 run scoreboard players set motion story 1
execute if score timer story matches 60 if score rover_anim story matches 1 as @e[tag=rover,tag=motion] run function scripts:rover/animations/anim_wheels_motion
execute if score timer story matches 135 if score rover_anim story matches 1 run clone 65 4 -44 68 7 -41 99 4 -5
execute if score timer story matches 155 if score rover_anim story matches 1 run clone 72 4 -44 75 7 -41 99 4 -5
execute if score timer story matches 160 if score rover_anim story matches 1 as @e[tag=rover,tag=motion] run function scripts:rover/animations/anim_wheels_standby
execute if score timer story matches 160 if score rover_anim story matches 1 run tag @e[tag=rover] remove motion
#execute if score timer story matches 160 if score rover_anim story matches 1 run say fin anim 1
execute if score timer story matches 160 if score rover_anim story matches 1 store success score timer story run scoreboard players add rover_anim story 1

execute if score timer story matches 1 if score rover_anim story matches 2 run function scripts:rover/animations/story/scan

#2
execute if score timer story matches 10 if score rover_anim story matches 2 run tag @e[tag=rover] add motion
execute if score timer story matches 10 if score rover_anim story matches 2 run data modify storage minecraft:motion_run Animation set from storage minecraft:motion Animation[10]
execute if score timer story matches 10 if score rover_anim story matches 2 run scoreboard players set motion story 1
execute if score timer story matches 10 if score rover_anim story matches 2 as @e[tag=rover,tag=motion] run function scripts:rover/animations/anim_wheels_motion
execute if score timer story matches 340 if score rover_anim story matches 2 as @e[tag=rover,tag=motion] run function scripts:rover/animations/anim_wheels_standby
execute if score timer story matches 340 if score rover_anim story matches 2 run tag @e[tag=rover] remove motion
#execute if score timer story matches 340 if score rover_anim story matches 2 run say fin anim 2
execute if score timer story matches 340 if score rover_anim story matches 2 store success score timer story run scoreboard players add rover_anim story 1

execute if score timer story matches 1 if score rover_anim story matches 3 run function scripts:rover/animations/story/ramasser

#3
execute if score timer story matches 10 if score rover_anim story matches 3 run tag @e[tag=rover] add motion
execute if score timer story matches 10 if score rover_anim story matches 3 run data modify storage minecraft:motion_run Animation set from storage minecraft:motion Animation[11]
execute if score timer story matches 10 if score rover_anim story matches 3 run scoreboard players set motion story 1
execute if score timer story matches 10 if score rover_anim story matches 3 as @e[tag=rover,tag=motion] run function scripts:rover/animations/anim_wheels_motion
execute if score timer story matches 320 if score rover_anim story matches 3 as @e[tag=rover,tag=motion] run function scripts:rover/animations/anim_wheels_standby
execute if score timer story matches 320 if score rover_anim story matches 3 run tag @e[tag=rover] remove motion
#execute if score timer story matches 320 if score rover_anim story matches 3 run say fin anim 3
execute if score timer story matches 320 if score rover_anim story matches 3 store success score timer story run scoreboard players add rover_anim story 1

execute if score timer story matches 1 if score rover_anim story matches 4 run function scripts:rover/animations/story/forage

#4
execute if score timer story matches 10 if score rover_anim story matches 4 run tag @e[tag=rover] add motion
execute if score timer story matches 10 if score rover_anim story matches 4 run data modify storage minecraft:motion_run Animation set from storage minecraft:motion Animation[12]
execute if score timer story matches 10 if score rover_anim story matches 4 run scoreboard players set motion story 1
execute if score timer story matches 10 if score rover_anim story matches 4 as @e[tag=rover,tag=motion] run function scripts:rover/animations/anim_wheels_motion
execute if score timer story matches 260 if score rover_anim story matches 4 as @e[tag=rover,tag=motion] run function scripts:rover/animations/anim_wheels_standby
execute if score timer story matches 260 if score rover_anim story matches 4 run tag @e[tag=rover] remove motion
#execute if score timer story matches 260 if score rover_anim story matches 4 run say fin anim 4
execute if score timer story matches 260 if score rover_anim story matches 4 store success score timer story run scoreboard players add rover_anim story 1

execute if score timer story matches 1 if score rover_anim story matches 5 run function scripts:rover/animations/story/forage

#5
execute if score timer story matches 10 if score rover_anim story matches 5 run tag @e[tag=rover] add motion
execute if score timer story matches 10 if score rover_anim story matches 5 run data modify storage minecraft:motion_run Animation set from storage minecraft:motion Animation[13]
execute if score timer story matches 10 if score rover_anim story matches 5 run scoreboard players set motion story 1
execute if score timer story matches 10 if score rover_anim story matches 5 as @e[tag=rover,tag=motion] run function scripts:rover/animations/anim_wheels_motion
execute if score timer story matches 200 if score rover_anim story matches 5 run clone 65 4 -44 68 7 -41 99 4 -5
execute if score timer story matches 220 if score rover_anim story matches 5 run clone 58 4 -44 61 7 -41 99 4 -5
execute if score timer story matches 270 if score rover_anim story matches 5 run clone 65 4 -44 68 7 -41 99 4 -5
execute if score timer story matches 290 if score rover_anim story matches 5 run clone 72 4 -44 75 7 -41 99 4 -5
execute if score timer story matches 290 if score rover_anim story matches 5 as @e[tag=rover,tag=motion] run function scripts:rover/animations/anim_wheels_standby
execute if score timer story matches 290 if score rover_anim story matches 5 run tag @e[tag=rover] remove motion
#execute if score timer story matches 290 if score rover_anim story matches 5 run say fin anim 5
execute if score timer story matches 290 if score rover_anim story matches 5 store success score timer story run scoreboard players add rover_anim story 1









#execute if score timer story matches 40 run tellraw @a[tag=player] ["",{"text":"\nMme Pesier :","bold":true,"color":"dark_green"},{"text":" A le rover sort du sas!"}]
#execute if score timer story matches 40 as @a[tag=player] at @s run playsound minecraft:entity.villager.trade master @s

# next step
execute if score timer story matches 1 if score rover_anim story matches 6 store success score timer story run scoreboard players set step story 20