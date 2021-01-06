scoreboard players add rover_timer story 1

execute if score rover_timer story matches 5 if score rover_anim story matches 4 as @e[tag=rover,tag=body,limit=1] at @s run summon minecraft:armor_stand ^ ^0.4 ^-1.25 {Invulnerable: 0b,Rotation: [0f, 0f],Marker: 1b,Invisible: 1b,NoGravity:1b,Tags:["rover","foreuse"],ArmorItems: [{}, {}, {}, {id: "minecraft:iron_ingot", Count: 1b, tag: {CustomModelData: 26}}]}

execute if score rover_timer story matches 5 if score rover_anim story matches 5 as @e[tag=rover,tag=body,limit=1] at @s run summon minecraft:armor_stand ^ ^0.55 ^-1.25 {Invulnerable: 0b,Rotation: [0f, 0f],Marker: 1b,Invisible: 1b,NoGravity:1b,Tags:["rover","foreuse"],ArmorItems: [{}, {}, {}, {id: "minecraft:iron_ingot", Count: 1b, tag: {CustomModelData: 26}}]}

execute if score rover_timer story matches 6 as @e[tag=rover,tag=foreuse,limit=1] at @s facing entity @e[tag=rover,tag=body,limit=1] eyes run tp ~ ~ ~

execute if score rover_timer story matches 7..17 as @e[tag=rover,tag=foreuse,limit=1] at @s run tp @s ~ ~-0.05 ~


execute if score rover_timer story matches 20..100 as @e[tag=rover,tag=foreuse,limit=1] at @s run particle minecraft:block smooth_red_sandstone ~ ~ ~ 0.25 0.25 0.25 0 2 force @a

execute if score rover_timer story matches 110..120 as @e[tag=rover,tag=foreuse,limit=1] at @s run tp @s ~ ~0.05 ~

execute if score rover_timer story matches 125 run kill @e[tag=rover,tag=foreuse,limit=1]

execute if score rover_timer story matches 130.. run scoreboard players set timer story 2
execute if score timer story matches 2.. run scoreboard players set rover_timer story 0