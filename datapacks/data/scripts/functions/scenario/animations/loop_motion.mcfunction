# Launch animation : /data modify storage minecraft:loop_motion_run Animation insert -1 value {Pos:[],Rotation:[]}

### Store Pos and Rotation in the entity
execute as @e[tag=loop_motion_0] at @s run data modify entity @s Pos set from storage minecraft:loop_motion_run Animation[0].Pos[0]
execute as @e[tag=loop_motion_0] at @s run data modify entity @s Rotation set from storage minecraft:loop_motion_run Animation[0].Rotation[0]

execute as @e[tag=loop_motion_1] at @s run data modify entity @s Pos set from storage minecraft:loop_motion_run Animation[1].Pos[0]
execute as @e[tag=loop_motion_1] at @s run data modify entity @s Rotation set from storage minecraft:loop_motion_run Animation[1].Rotation[0]

execute as @e[tag=loop_motion_2] at @s run data modify entity @s Pos set from storage minecraft:loop_motion_run Animation[2].Pos[0]
execute as @e[tag=loop_motion_2] at @s run data modify entity @s Rotation set from storage minecraft:loop_motion_run Animation[2].Rotation[0]

execute as @e[tag=loop_motion_3] at @s run data modify entity @s Pos set from storage minecraft:loop_motion_run Animation[3].Pos[0]
execute as @e[tag=loop_motion_3] at @s run data modify entity @s Rotation set from storage minecraft:loop_motion_run Animation[3].Rotation[0]

execute as @e[tag=loop_motion_4] at @s run data modify entity @s Pos set from storage minecraft:loop_motion_run Animation[4].Pos[0]
execute as @e[tag=loop_motion_4] at @s run data modify entity @s Rotation set from storage minecraft:loop_motion_run Animation[4].Rotation[0]

execute as @e[tag=loop_motion_5] at @s run data modify entity @s Pos set from storage minecraft:loop_motion_run Animation[5].Pos[0]
execute as @e[tag=loop_motion_5] at @s run data modify entity @s Rotation set from storage minecraft:loop_motion_run Animation[5].Rotation[0]

execute as @e[tag=loop_motion_6] at @s run data modify entity @s Pos set from storage minecraft:loop_motion_run Animation[6].Pos[0]
execute as @e[tag=loop_motion_6] at @s run data modify entity @s Rotation set from storage minecraft:loop_motion_run Animation[6].Rotation[0]


### Remove 1 frame
data remove storage minecraft:loop_motion_run Animation[0].Pos[0]
data remove storage minecraft:loop_motion_run Animation[0].Rotation[0]

data remove storage minecraft:loop_motion_run Animation[1].Pos[0]
data remove storage minecraft:loop_motion_run Animation[1].Rotation[0]

data remove storage minecraft:loop_motion_run Animation[2].Pos[0]
data remove storage minecraft:loop_motion_run Animation[2].Rotation[0]

data remove storage minecraft:loop_motion_run Animation[3].Pos[0]
data remove storage minecraft:loop_motion_run Animation[3].Rotation[0]

data remove storage minecraft:loop_motion_run Animation[4].Pos[0]
data remove storage minecraft:loop_motion_run Animation[4].Rotation[0]

data remove storage minecraft:loop_motion_run Animation[5].Pos[0]
data remove storage minecraft:loop_motion_run Animation[5].Rotation[0]

data remove storage minecraft:loop_motion_run Animation[6].Pos[0]
data remove storage minecraft:loop_motion_run Animation[6].Rotation[0]


### If the animation is finished, we restart it
execute unless data storage minecraft:loop_motion_run Animation[0].Pos[0] run data modify storage minecraft:loop_motion_run Animation[0] set from storage minecraft:loop_motion Animation[0]

execute unless data storage minecraft:loop_motion_run Animation[1].Pos[0] run data modify storage minecraft:loop_motion_run Animation[1] set from storage minecraft:loop_motion Animation[1]

execute unless data storage minecraft:loop_motion_run Animation[2].Pos[0] run data modify storage minecraft:loop_motion_run Animation[2] set from storage minecraft:loop_motion Animation[2]

execute unless data storage minecraft:loop_motion_run Animation[3].Pos[0] run data modify storage minecraft:loop_motion_run Animation[3] set from storage minecraft:loop_motion Animation[3]

execute unless data storage minecraft:loop_motion_run Animation[4].Pos[0] run data modify storage minecraft:loop_motion_run Animation[4] set from storage minecraft:loop_motion Animation[4]

execute unless data storage minecraft:loop_motion_run Animation[5].Pos[0] run data modify storage minecraft:loop_motion_run Animation[5] set from storage minecraft:loop_motion Animation[5]

execute unless data storage minecraft:loop_motion_run Animation[6].Pos[0] run data modify storage minecraft:loop_motion_run Animation[6] set from storage minecraft:loop_motion Animation[6]
