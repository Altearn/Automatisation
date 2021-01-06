scoreboard players add rover_timer story 1

execute if score rover_timer story matches 5 as @e[tag=rover,tag=body] at @s run summon minecraft:armor_stand ^0.457 ^-0.380 ^0.879 {Fire:32000s, Invulnerable: 1b,Rotation: [270.0f, 0.0f],Marker: 1b,Invisible: 1b,NoGravity:1b,Tags:["rover","scanner"],ArmorItems: [{}, {}, {}, {id: "minecraft:iron_ingot", Count: 1b, tag: {CustomModelData: 19}}]}
execute if score rover_timer story matches 5 at @e[tag=rover,limit=1] run replaceitem entity @e[tag=rover,tag=body] armor.head minecraft:iron_ingot{CustomModelData:20}



execute if score rover_timer story matches 20 at @e[tag=rover,limit=1] positioned ^0.457 ^0.4 ^0.879 run particle minecraft:soul_fire_flame ~ ~2 ~ 0 0 0 0.75 200 force @a

execute if score rover_timer story matches 30 at @e[tag=rover,limit=1] run data merge entity @e[tag=scanner,tag=rover,limit=1] {Rotation:[0.0f,0.0f]}
execute if score rover_timer story matches 40 at @e[tag=rover,limit=1] positioned ^0.457 ^0.4 ^0.879 run particle minecraft:soul_fire_flame ~ ~2 ~ 0 0 0 0.75 200 force @a

execute if score rover_timer story matches 50 at @e[tag=rover,limit=1] run data merge entity @e[tag=scanner,tag=rover,limit=1] {Rotation:[90.0f,0.0f]}
execute if score rover_timer story matches 60 at @e[tag=rover,limit=1] positioned ^0.457 ^0.4 ^0.879 run particle minecraft:soul_fire_flame ~ ~2 ~ 0 0 0 0.75 200 force @a

execute if score rover_timer story matches 70 at @e[tag=rover,limit=1] run data merge entity @e[tag=scanner,tag=rover,limit=1] {Rotation:[180.0f,0.0f]}
execute if score rover_timer story matches 80 at @e[tag=rover,limit=1] positioned ^0.457 ^0.4 ^0.879 run particle minecraft:soul_fire_flame ~ ~2 ~ 0 0 0 0.75 200 force @a

execute if score rover_timer story matches 90 at @e[tag=rover,limit=1] run data merge entity @e[tag=scanner,tag=rover,limit=1] {Rotation:[270.0f,0.0f]}

execute if score rover_timer story matches 100 at @e[tag=rover,limit=1] run replaceitem entity @e[tag=rover,tag=body] armor.head minecraft:iron_ingot{CustomModelData:17}
execute if score rover_timer story matches 100 at @e[tag=rover,limit=1] run kill @e[tag=scanner,tag=rover,limit=1]

execute if score rover_timer story matches 105 as @e[tag=rover] run function scripts:rover/animations/anim_wheels_motion


execute if score rover_timer story matches 110..119 as @e[tag=rover,limit=1] at @s run tp @s ^ ^ ^-0.1
execute if score rover_timer story matches 120..129 as @e[tag=rover,limit=1] at @s run tp @s ^ ^ ^0.1
execute if score rover_timer story matches 140..149 as @e[tag=rover,limit=1] at @s run tp @s ~ ~ ~ ~-5 ~
execute if score rover_timer story matches 150..159 as @e[tag=rover,limit=1] at @s run tp @s ~ ~ ~ ~5 ~

#execute if score rover_timer story matches 110 as @e[tag=rover,limit=1] at @s run tp @s ^ ^ ^0.1
#execute if score rover_timer story matches 111 as @e[tag=rover,limit=1] at @s run tp @s ^ ^ ^0.1
#execute if score rover_timer story matches 112 as @e[tag=rover,limit=1] at @s run tp @s ^ ^ ^0.1
#execute if score rover_timer story matches 113 as @e[tag=rover,limit=1] at @s run tp @s ^ ^ ^0.1
#execute if score rover_timer story matches 114 as @e[tag=rover,limit=1] at @s run tp @s ^ ^ ^0.1
#execute if score rover_timer story matches 115 as @e[tag=rover,limit=1] at @s run tp @s ^ ^ ^0.1
#execute if score rover_timer story matches 116 as @e[tag=rover,limit=1] at @s run tp @s ^ ^ ^0.1
#execute if score rover_timer story matches 117 as @e[tag=rover,limit=1] at @s run tp @s ^ ^ ^0.1
#execute if score rover_timer story matches 118 as @e[tag=rover,limit=1] at @s run tp @s ^ ^ ^0.1
#execute if score rover_timer story matches 119 as @e[tag=rover,limit=1] at @s run tp @s ^ ^ ^0.1

#execute if score rover_timer story matches 120 as @e[tag=rover,limit=1] at @s run tp @s ^ ^ ^-0.1
#execute if score rover_timer story matches 121 as @e[tag=rover,limit=1] at @s run tp @s ^ ^ ^-0.1
#execute if score rover_timer story matches 122 as @e[tag=rover,limit=1] at @s run tp @s ^ ^ ^-0.1
#execute if score rover_timer story matches 123 as @e[tag=rover,limit=1] at @s run tp @s ^ ^ ^-0.1
#execute if score rover_timer story matches 124 as @e[tag=rover,limit=1] at @s run tp @s ^ ^ ^-0.1
#execute if score rover_timer story matches 125 as @e[tag=rover,limit=1] at @s run tp @s ^ ^ ^-0.1
#execute if score rover_timer story matches 126 as @e[tag=rover,limit=1] at @s run tp @s ^ ^ ^-0.1
#execute if score rover_timer story matches 127 as @e[tag=rover,limit=1] at @s run tp @s ^ ^ ^-0.1
#execute if score rover_timer story matches 128 as @e[tag=rover,limit=1] at @s run tp @s ^ ^ ^-0.1
#execute if score rover_timer story matches 129 as @e[tag=rover,limit=1] at @s run tp @s ^ ^ ^-0.1


#execute if score rover_timer story matches 140 as @e[tag=rover,limit=1] at @s run data merge entity @e[tag=rover,limit=1] {Rotation:[-90.0f,0.0f]}
#execute if score rover_timer story matches 141 as @e[tag=rover,limit=1] at @s run data merge entity @e[tag=rover,limit=1] {Rotation:[-85.0f,0.0f]}
#execute if score rover_timer story matches 142 as @e[tag=rover,limit=1] at @s run data merge entity @e[tag=rover,limit=1] {Rotation:[-80.0f,0.0f]}
#execute if score rover_timer story matches 143 as @e[tag=rover,limit=1] at @s run data merge entity @e[tag=rover,limit=1] {Rotation:[-75.0f,0.0f]}
#execute if score rover_timer story matches 144 as @e[tag=rover,limit=1] at @s run data merge entity @e[tag=rover,limit=1] {Rotation:[-70.0f,0.0f]}
#execute if score rover_timer story matches 145 as @e[tag=rover,limit=1] at @s run data merge entity @e[tag=rover,limit=1] {Rotation:[-65.0f,0.0f]}
#execute if score rover_timer story matches 146 as @e[tag=rover,limit=1] at @s run data merge entity @e[tag=rover,limit=1] {Rotation:[-60.0f,0.0f]}
#execute if score rover_timer story matches 147 as @e[tag=rover,limit=1] at @s run data merge entity @e[tag=rover,limit=1] {Rotation:[-55.0f,0.0f]}
#execute if score rover_timer story matches 148 as @e[tag=rover,limit=1] at @s run data merge entity @e[tag=rover,limit=1] {Rotation:[-50.0f,0.0f]}
#execute if score rover_timer story matches 149 as @e[tag=rover,limit=1] at @s run data merge entity @e[tag=rover,limit=1] {Rotation:[-45.0f,0.0f]}
#execute if score rover_timer story matches 150 as @e[tag=rover,limit=1] at @s run data merge entity @e[tag=rover,limit=1] {Rotation:[-50.0f,0.0f]}
#execute if score rover_timer story matches 151 as @e[tag=rover,limit=1] at @s run data merge entity @e[tag=rover,limit=1] {Rotation:[-55.0f,0.0f]}
#execute if score rover_timer story matches 152 as @e[tag=rover,limit=1] at @s run data merge entity @e[tag=rover,limit=1] {Rotation:[-60.0f,0.0f]}
#execute if score rover_timer story matches 153 as @e[tag=rover,limit=1] at @s run data merge entity @e[tag=rover,limit=1] {Rotation:[-65.0f,0.0f]}
#execute if score rover_timer story matches 154 as @e[tag=rover,limit=1] at @s run data merge entity @e[tag=rover,limit=1] {Rotation:[-70.0f,0.0f]}
#execute if score rover_timer story matches 155 as @e[tag=rover,limit=1] at @s run data merge entity @e[tag=rover,limit=1] {Rotation:[-75.0f,0.0f]}
#execute if score rover_timer story matches 156 as @e[tag=rover,limit=1] at @s run data merge entity @e[tag=rover,limit=1] {Rotation:[-80.0f,0.0f]}
#execute if score rover_timer story matches 157 as @e[tag=rover,limit=1] at @s run data merge entity @e[tag=rover,limit=1] {Rotation:[-85.0f,0.0f]}
#execute if score rover_timer story matches 158 as @e[tag=rover,limit=1] at @s run data merge entity @e[tag=rover,limit=1] {Rotation:[-90.0f,0.0f]}

execute if score rover_timer story matches 165 as @e[tag=rover] run function scripts:rover/animations/anim_wheels_standby


execute if score rover_timer story matches 180.. run scoreboard players set timer story 2
execute if score timer story matches 2.. run scoreboard players set rover_timer story 0