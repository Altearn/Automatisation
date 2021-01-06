### Store Pos and Rotation in the entity
execute as @e[tag=motion,tag=!rover] at @s run data modify entity @s Pos set from storage minecraft:motion_run Animation.Pos[0]

execute as @e[tag=motion,tag=rover] at @s run data modify entity @s Pos[0] set from storage minecraft:motion_run Animation.Pos[0][0]
execute as @e[tag=motion,tag=rover] at @s run data modify entity @s Pos[2] set from storage minecraft:motion_run Animation.Pos[0][2]

execute as @e[tag=motion] at @s run data modify entity @s Rotation set from storage minecraft:motion_run Animation.Rotation[0]

### Remove 1 frame
data remove storage minecraft:motion_run Animation.Pos[0]
data remove storage minecraft:motion_run Animation.Rotation[0]

### The animation is finished
execute unless data storage minecraft:motion_run Animation.Pos[0] run scoreboard players set motion story 0