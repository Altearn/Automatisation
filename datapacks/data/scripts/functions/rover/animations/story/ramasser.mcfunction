scoreboard players add rover_timer story 1

execute if score rover_timer story matches 10 at @e[tag=rover,limit=1] run replaceitem entity @e[tag=rover,tag=body] armor.head minecraft:iron_ingot{CustomModelData:2}
execute if score rover_timer story matches 10 as @e[tag=rover,tag=body,limit=1] at @s run summon minecraft:armor_stand ^-0.345 ^-0.200 ^0.315 {Invulnerable: 0b,Rotation: [355.72314f, 7.8173456f],Marker: 1b,Invisible: 1b,NoGravity:1b,Tags:["rover","arm"],ArmorItems: [{}, {}, {}, {id: "minecraft:iron_ingot", Count: 1b, tag: {CustomModelData: 21}}]}

execute if score rover_timer story matches 15 as @e[tag=rover,tag=arm,limit=1] at @s run data merge entity @s {Rotation:[365.0f,7.8f]}
execute if score rover_timer story matches 16 as @e[tag=rover,tag=arm,limit=1] at @s run data merge entity @s {Rotation:[375.0f,7.8f]}
execute if score rover_timer story matches 17 as @e[tag=rover,tag=arm,limit=1] at @s run data merge entity @s {Rotation:[385.0f,7.8f]}
execute if score rover_timer story matches 18 as @e[tag=rover,tag=arm,limit=1] at @s run data merge entity @s {Rotation:[395.0f,7.8f]}
execute if score rover_timer story matches 19 as @e[tag=rover,tag=arm,limit=1] at @s run data merge entity @s {Rotation:[405.0f,7.8f]}
execute if score rover_timer story matches 20 as @e[tag=rover,tag=arm,limit=1] at @s run data merge entity @s {Rotation:[415.0f,7.8f]}
execute if score rover_timer story matches 21 as @e[tag=rover,tag=arm,limit=1] at @s run data merge entity @s {Rotation:[425.0f,7.8f]}
execute if score rover_timer story matches 22 as @e[tag=rover,tag=arm,limit=1] at @s run data merge entity @s {Rotation:[435.0f,7.8f]}
execute if score rover_timer story matches 23 as @e[tag=rover,tag=arm,limit=1] at @s run data merge entity @s {Rotation:[445.0f,7.8f]}

execute if score rover_timer story matches 24 as @e[tag=rover,tag=arm,limit=1] at @s run data merge entity @s {Pose:{Head:[-5f,0f,0f]}}
execute if score rover_timer story matches 25 as @e[tag=rover,tag=arm,limit=1] at @s run data merge entity @s {Pose:{Head:[-10f,0f,0f]}}
execute if score rover_timer story matches 26 as @e[tag=rover,tag=arm,limit=1] at @s run data merge entity @s {Pose:{Head:[-15f,0f,0f]}}
execute if score rover_timer story matches 27 as @e[tag=rover,tag=arm,limit=1] at @s run data merge entity @s {Pose:{Head:[-20f,0f,0f]}}
execute if score rover_timer story matches 28 as @e[tag=rover,tag=arm,limit=1] at @s run data merge entity @s {Pose:{Head:[-25f,0f,0f]}}
execute if score rover_timer story matches 29 as @e[tag=rover,tag=arm,limit=1] at @s run data merge entity @s {Pose:{Head:[-30f,0f,0f]}}
execute if score rover_timer story matches 30 as @e[tag=rover,tag=arm,limit=1] at @s run data merge entity @s {Pose:{Head:[-35f,0f,0f]}}
execute if score rover_timer story matches 31 as @e[tag=rover,tag=arm,limit=1] at @s run data merge entity @s {Pose:{Head:[-40f,0f,0f]}}
execute if score rover_timer story matches 32 as @e[tag=rover,tag=arm,limit=1] at @s run data merge entity @s {Pose:{Head:[-45f,0f,0f]}}
execute if score rover_timer story matches 33 as @e[tag=rover,tag=arm,limit=1] at @s run data merge entity @s {Pose:{Head:[-50f,0f,0f]}}
execute if score rover_timer story matches 34 as @e[tag=rover,tag=arm,limit=1] at @s run data merge entity @s {Pose:{Head:[-55f,0f,0f]}}
execute if score rover_timer story matches 35 as @e[tag=rover,tag=arm,limit=1] at @s run data merge entity @s {Pose:{Head:[-60f,0f,0f]}}
execute if score rover_timer story matches 36 as @e[tag=rover,tag=arm,limit=1] at @s run data merge entity @s {Pose:{Head:[-65f,0f,0f]}}
execute if score rover_timer story matches 37 as @e[tag=rover,tag=arm,limit=1] at @s run data merge entity @s {Pose:{Head:[-70f,0f,0f]}}
execute if score rover_timer story matches 38 as @e[tag=rover,tag=arm,limit=1] at @s run data merge entity @s {Pose:{Head:[-75f,0f,0f]}}
execute if score rover_timer story matches 39 as @e[tag=rover,tag=arm,limit=1] at @s run data merge entity @s {Pose:{Head:[-80f,0f,0f]}}
execute if score rover_timer story matches 40 as @e[tag=rover,tag=arm,limit=1] at @s run data merge entity @s {Pose:{Head:[-85f,0f,0f]}}
execute if score rover_timer story matches 41 as @e[tag=rover,tag=arm,limit=1] at @s run data merge entity @s {Pose:{Head:[-90f,0f,0f]}}

execute if score rover_timer story matches 42 as @e[tag=rover,tag=arm,limit=1] at @s run replaceitem entity @s armor.head minecraft:iron_ingot{CustomModelData:22}

execute if score rover_timer story matches 42 as @e[tag=rover,tag=body,limit=1] at @s run summon minecraft:armor_stand ^-0.310 ^0.645 ^0.198 {Pose:{Head:[-90f,0f,0f]},Invulnerable: 0b,Rotation: [445.0f,7.8f],Marker: 1b,Invisible: 1b,NoGravity:1b,Tags:["rover","arm2"],ArmorItems: [{}, {}, {}, {id: "minecraft:iron_ingot", Count: 1b, tag: {CustomModelData: 23}}]}

execute if score rover_timer story matches 43 as @e[tag=rover,tag=arm2,limit=1] at @s run data merge entity @s {Pose:{Head:[-85f,0f,0f]}}
execute if score rover_timer story matches 44 as @e[tag=rover,tag=arm2,limit=1] at @s run data merge entity @s {Pose:{Head:[-80f,0f,0f]}}
execute if score rover_timer story matches 45 as @e[tag=rover,tag=arm2,limit=1] at @s run data merge entity @s {Pose:{Head:[-75f,0f,0f]}}
execute if score rover_timer story matches 46 as @e[tag=rover,tag=arm2,limit=1] at @s run data merge entity @s {Pose:{Head:[-70f,0f,0f]}}
execute if score rover_timer story matches 47 as @e[tag=rover,tag=arm2,limit=1] at @s run data merge entity @s {Pose:{Head:[-65f,0f,0f]}}
execute if score rover_timer story matches 48 as @e[tag=rover,tag=arm2,limit=1] at @s run data merge entity @s {Pose:{Head:[-60f,0f,0f]}}
execute if score rover_timer story matches 49 as @e[tag=rover,tag=arm2,limit=1] at @s run data merge entity @s {Pose:{Head:[-55f,0f,0f]}}
execute if score rover_timer story matches 50 as @e[tag=rover,tag=arm2,limit=1] at @s run data merge entity @s {Pose:{Head:[-50f,0f,0f]}}
execute if score rover_timer story matches 51 as @e[tag=rover,tag=arm2,limit=1] at @s run data merge entity @s {Pose:{Head:[-45f,0f,0f]}}
execute if score rover_timer story matches 52 as @e[tag=rover,tag=arm2,limit=1] at @s run data merge entity @s {Pose:{Head:[-40f,0f,0f]}}
execute if score rover_timer story matches 53 as @e[tag=rover,tag=arm2,limit=1] at @s run data merge entity @s {Pose:{Head:[-35f,0f,0f]}}
execute if score rover_timer story matches 54 as @e[tag=rover,tag=arm2,limit=1] at @s run data merge entity @s {Pose:{Head:[-30f,0f,0f]}}
execute if score rover_timer story matches 55 as @e[tag=rover,tag=arm2,limit=1] at @s run data merge entity @s {Pose:{Head:[-25f,0f,0f]}}
execute if score rover_timer story matches 56 as @e[tag=rover,tag=arm2,limit=1] at @s run data merge entity @s {Pose:{Head:[-20f,0f,0f]}}
execute if score rover_timer story matches 57 as @e[tag=rover,tag=arm2,limit=1] at @s run data merge entity @s {Pose:{Head:[-15f,0f,0f]}}
execute if score rover_timer story matches 58 as @e[tag=rover,tag=arm2,limit=1] at @s run data merge entity @s {Pose:{Head:[-10f,0f,0f]}}
execute if score rover_timer story matches 59 as @e[tag=rover,tag=arm2,limit=1] at @s run data merge entity @s {Pose:{Head:[-5f,0f,0f]}}
execute if score rover_timer story matches 60 as @e[tag=rover,tag=arm2,limit=1] at @s run data merge entity @s {Pose:{Head:[0f,0f,0f]}}

execute if score rover_timer story matches 63 as @e[tag=rover,tag=arm2,limit=1] at @s run replaceitem entity @s armor.head minecraft:iron_ingot{CustomModelData:24}
execute if score rover_timer story matches 63 as @e[tag=rover,tag=arm2,limit=1] at @s run summon minecraft:armor_stand ^-0.01 ^-0.165 ^-0.960 {Pose:{Head:[0f,0f,0f]},Invulnerable: 0b,Rotation: [445.0f,7.8f],Marker: 1b,Invisible: 1b,NoGravity:1b,Tags:["rover","arm3"],ArmorItems: [{}, {}, {}, {id: "minecraft:iron_ingot", Count: 1b, tag: {CustomModelData:25}}]}

execute if score rover_timer story matches 46 as @e[tag=rover,tag=arm3,limit=1] at @s run data merge entity @s {Pose:{Head:[5f,0f,0f]}}
execute if score rover_timer story matches 47 as @e[tag=rover,tag=arm3,limit=1] at @s run data merge entity @s {Pose:{Head:[10f,0f,0f]}}
execute if score rover_timer story matches 48 as @e[tag=rover,tag=arm3,limit=1] at @s run data merge entity @s {Pose:{Head:[15f,0f,0f]}}
execute if score rover_timer story matches 49 as @e[tag=rover,tag=arm3,limit=1] at @s run data merge entity @s {Pose:{Head:[20f,0f,0f]}}
execute if score rover_timer story matches 50 as @e[tag=rover,tag=arm3,limit=1] at @s run data merge entity @s {Pose:{Head:[25f,0f,0f]}}
execute if score rover_timer story matches 51 as @e[tag=rover,tag=arm3,limit=1] at @s run data merge entity @s {Pose:{Head:[30f,0f,0f]}}
execute if score rover_timer story matches 52 as @e[tag=rover,tag=arm3,limit=1] at @s run data merge entity @s {Pose:{Head:[35f,0f,0f]}}
execute if score rover_timer story matches 53 as @e[tag=rover,tag=arm3,limit=1] at @s run data merge entity @s {Pose:{Head:[40f,0f,0f]}}
execute if score rover_timer story matches 54 as @e[tag=rover,tag=arm3,limit=1] at @s run data merge entity @s {Pose:{Head:[45f,0f,0f]}}
execute if score rover_timer story matches 55 as @e[tag=rover,tag=arm3,limit=1] at @s run data merge entity @s {Pose:{Head:[50f,0f,0f]}}
execute if score rover_timer story matches 56 as @e[tag=rover,tag=arm3,limit=1] at @s run data merge entity @s {Pose:{Head:[55f,0f,0f]}}
execute if score rover_timer story matches 57 as @e[tag=rover,tag=arm3,limit=1] at @s run data merge entity @s {Pose:{Head:[60f,0f,0f]}}
execute if score rover_timer story matches 58 as @e[tag=rover,tag=arm3,limit=1] at @s run data merge entity @s {Pose:{Head:[65f,0f,0f]}}
execute if score rover_timer story matches 59 as @e[tag=rover,tag=arm3,limit=1] at @s run data merge entity @s {Pose:{Head:[70f,0f,0f]}}
execute if score rover_timer story matches 60 as @e[tag=rover,tag=arm3,limit=1] at @s run data merge entity @s {Pose:{Head:[75f,0f,0f]}}
execute if score rover_timer story matches 61 as @e[tag=rover,tag=arm3,limit=1] at @s run data merge entity @s {Pose:{Head:[80f,0f,0f]}}
execute if score rover_timer story matches 62 as @e[tag=rover,tag=arm3,limit=1] at @s run data merge entity @s {Pose:{Head:[85f,0f,0f]}}
execute if score rover_timer story matches 63 as @e[tag=rover,tag=arm3,limit=1] at @s run data merge entity @s {Pose:{Head:[90f,0f,0f]}}
execute if score rover_timer story matches 64 as @e[tag=rover,tag=arm3,limit=1] at @s run data merge entity @s {Pose:{Head:[95f,0f,0f]}}
execute if score rover_timer story matches 65 as @e[tag=rover,tag=arm3,limit=1] at @s run data merge entity @s {Pose:{Head:[100f,0f,0f]}}
execute if score rover_timer story matches 66 as @e[tag=rover,tag=arm3,limit=1] at @s run data merge entity @s {Pose:{Head:[105f,0f,0f]}}
execute if score rover_timer story matches 67 as @e[tag=rover,tag=arm3,limit=1] at @s run data merge entity @s {Pose:{Head:[110f,0f,0f]}}
execute if score rover_timer story matches 68 as @e[tag=rover,tag=arm3,limit=1] at @s run data merge entity @s {Pose:{Head:[115f,0f,0f]}}
execute if score rover_timer story matches 69 as @e[tag=rover,tag=arm3,limit=1] at @s run data merge entity @s {Pose:{Head:[120f,0f,0f]}}
execute if score rover_timer story matches 70 as @e[tag=rover,tag=arm3,limit=1] at @s run data merge entity @s {Pose:{Head:[125f,0f,0f]}}
execute if score rover_timer story matches 71 as @e[tag=rover,tag=arm3,limit=1] at @s run data merge entity @s {Pose:{Head:[130f,0f,0f]}}
execute if score rover_timer story matches 72 as @e[tag=rover,tag=arm3,limit=1] at @s run data merge entity @s {Pose:{Head:[135f,0f,0f]}}
execute if score rover_timer story matches 73 as @e[tag=rover,tag=arm3,limit=1] at @s run data merge entity @s {Pose:{Head:[140f,0f,0f]}}
execute if score rover_timer story matches 74 as @e[tag=rover,tag=arm3,limit=1] at @s run data merge entity @s {Pose:{Head:[145f,0f,0f]}}
execute if score rover_timer story matches 75 as @e[tag=rover,tag=arm3,limit=1] at @s run data merge entity @s {Pose:{Head:[150f,0f,0f]}}

execute if score rover_timer story matches 80 as @e[tag=rover,tag=arm3,limit=1] at @s run summon minecraft:armor_stand ^0.0 ^-0.1 ^-1.0 {Invulnerable: 0b,Rotation: [445.0f,7.8f],Marker: 1b,Invisible: 1b,NoGravity:1b,Small:1b,Tags:["rover","arm4"],ArmorItems: [{}, {}, {}, {id: "minecraft:granite", Count: 1b}]}

execute if score rover_timer story matches 85 as @e[tag=rover,tag=arm3,limit=1] at @s run data merge entity @s {Pose:{Head:[145f,0f,0f]}}
execute if score rover_timer story matches 85 as @e[tag=rover,tag=arm3,limit=1] at @s run tp @e[tag=arm4,limit=1] ^0.0 ^-0.1 ^-0.920
execute if score rover_timer story matches 86 as @e[tag=rover,tag=arm3,limit=1] at @s run data merge entity @s {Pose:{Head:[140f,0f,0f]}}
execute if score rover_timer story matches 86 as @e[tag=rover,tag=arm3,limit=1] at @s run tp @e[tag=arm4,limit=1] ^0.0 ^-0.16 ^-0.870
execute if score rover_timer story matches 87 as @e[tag=rover,tag=arm3,limit=1] at @s run data merge entity @s {Pose:{Head:[135f,0f,0f]}}
execute if score rover_timer story matches 87 as @e[tag=rover,tag=arm3,limit=1] at @s run tp @e[tag=arm4,limit=1] ^0.0 ^-0.18 ^-0.80
execute if score rover_timer story matches 88 as @e[tag=rover,tag=arm3,limit=1] at @s run data merge entity @s {Pose:{Head:[130f,0f,0f]}}
execute if score rover_timer story matches 88 as @e[tag=rover,tag=arm3,limit=1] at @s run tp @e[tag=arm4,limit=1] ^0.0 ^-0.25 ^-0.740
execute if score rover_timer story matches 89 as @e[tag=rover,tag=arm3,limit=1] at @s run data merge entity @s {Pose:{Head:[125f,0f,0f]}}
execute if score rover_timer story matches 89 as @e[tag=rover,tag=arm3,limit=1] at @s run tp @e[tag=arm4,limit=1] ^0.0 ^-0.29 ^-0.680
execute if score rover_timer story matches 90 as @e[tag=rover,tag=arm3,limit=1] at @s run data merge entity @s {Pose:{Head:[120f,0f,0f]}}
execute if score rover_timer story matches 90 as @e[tag=rover,tag=arm3,limit=1] at @s run tp @e[tag=arm4,limit=1] ^0.0 ^-0.350 ^-0.60
execute if score rover_timer story matches 91 as @e[tag=rover,tag=arm3,limit=1] at @s run data merge entity @s {Pose:{Head:[115f,0f,0f]}}
execute if score rover_timer story matches 91 as @e[tag=rover,tag=arm3,limit=1] at @s run tp @e[tag=arm4,limit=1] ^0.0 ^-0.400 ^-0.52
execute if score rover_timer story matches 92 as @e[tag=rover,tag=arm3,limit=1] at @s run data merge entity @s {Pose:{Head:[110f,0f,0f]}}
execute if score rover_timer story matches 92 as @e[tag=rover,tag=arm3,limit=1] at @s run tp @e[tag=arm4,limit=1] ^0.0 ^-0.48 ^-0.45
execute if score rover_timer story matches 93 as @e[tag=rover,tag=arm3,limit=1] at @s run data merge entity @s {Pose:{Head:[105f,0f,0f]}}
execute if score rover_timer story matches 93 as @e[tag=rover,tag=arm3,limit=1] at @s run tp @e[tag=arm4,limit=1] ^0.0 ^-0.530 ^-0.3
execute if score rover_timer story matches 94 as @e[tag=rover,tag=arm3,limit=1] at @s run data merge entity @s {Pose:{Head:[100f,0f,0f]}}
execute if score rover_timer story matches 94 as @e[tag=rover,tag=arm3,limit=1] at @s run tp @e[tag=arm4,limit=1] ^0.0 ^-0.560 ^-0.20
execute if score rover_timer story matches 95 as @e[tag=rover,tag=arm3,limit=1] at @s run data merge entity @s {Pose:{Head:[95f,0f,0f]}}
execute if score rover_timer story matches 95 as @e[tag=rover,tag=arm3,limit=1] at @s run tp @e[tag=arm4,limit=1] ^0.0 ^-0.560 ^-0.130
execute if score rover_timer story matches 96 as @e[tag=rover,tag=arm3,limit=1] at @s run data merge entity @s {Pose:{Head:[90f,0f,0f]}}
execute if score rover_timer story matches 96 as @e[tag=rover,tag=arm3,limit=1] at @s run tp @e[tag=arm4,limit=1] ^0.0 ^-0.56 ^-0.0

execute if score rover_timer story matches 100 run kill @e[tag=rover,tag=arm4,limit=1]

execute if score rover_timer story matches 105 as @e[tag=rover,tag=arm3,limit=1] at @s run data merge entity @s {Pose:{Head:[85f,0f,0f]}}
execute if score rover_timer story matches 106 as @e[tag=rover,tag=arm3,limit=1] at @s run data merge entity @s {Pose:{Head:[80f,0f,0f]}}
execute if score rover_timer story matches 107 as @e[tag=rover,tag=arm3,limit=1] at @s run data merge entity @s {Pose:{Head:[75f,0f,0f]}}
execute if score rover_timer story matches 108 as @e[tag=rover,tag=arm3,limit=1] at @s run data merge entity @s {Pose:{Head:[70f,0f,0f]}}
execute if score rover_timer story matches 109 as @e[tag=rover,tag=arm3,limit=1] at @s run data merge entity @s {Pose:{Head:[65f,0f,0f]}}
execute if score rover_timer story matches 110 as @e[tag=rover,tag=arm3,limit=1] at @s run data merge entity @s {Pose:{Head:[60f,0f,0f]}}
execute if score rover_timer story matches 111 as @e[tag=rover,tag=arm3,limit=1] at @s run data merge entity @s {Pose:{Head:[55f,0f,0f]}}
execute if score rover_timer story matches 112 as @e[tag=rover,tag=arm3,limit=1] at @s run data merge entity @s {Pose:{Head:[50f,0f,0f]}}
execute if score rover_timer story matches 113 as @e[tag=rover,tag=arm3,limit=1] at @s run data merge entity @s {Pose:{Head:[45f,0f,0f]}}
execute if score rover_timer story matches 114 as @e[tag=rover,tag=arm3,limit=1] at @s run data merge entity @s {Pose:{Head:[40f,0f,0f]}}
execute if score rover_timer story matches 115 as @e[tag=rover,tag=arm3,limit=1] at @s run data merge entity @s {Pose:{Head:[35f,0f,0f]}}
execute if score rover_timer story matches 116 as @e[tag=rover,tag=arm3,limit=1] at @s run data merge entity @s {Pose:{Head:[30f,0f,0f]}}
execute if score rover_timer story matches 117 as @e[tag=rover,tag=arm3,limit=1] at @s run data merge entity @s {Pose:{Head:[25f,0f,0f]}}
execute if score rover_timer story matches 118 as @e[tag=rover,tag=arm3,limit=1] at @s run data merge entity @s {Pose:{Head:[20f,0f,0f]}}
execute if score rover_timer story matches 119 as @e[tag=rover,tag=arm3,limit=1] at @s run data merge entity @s {Pose:{Head:[15f,0f,0f]}}
execute if score rover_timer story matches 120 as @e[tag=rover,tag=arm3,limit=1] at @s run data merge entity @s {Pose:{Head:[10f,0f,0f]}}
execute if score rover_timer story matches 121 as @e[tag=rover,tag=arm3,limit=1] at @s run data merge entity @s {Pose:{Head:[5f,0f,0f]}}
execute if score rover_timer story matches 122 as @e[tag=rover,tag=arm3,limit=1] at @s run data merge entity @s {Pose:{Head:[0f,0f,0f]}}

execute if score rover_timer story matches 123 run kill @e[tag=rover,tag=arm3,limit=1]
execute if score rover_timer story matches 123 as @e[tag=rover,tag=arm2,limit=1] at @s run replaceitem entity @s armor.head minecraft:iron_ingot{CustomModelData:23}

execute if score rover_timer story matches 124 as @e[tag=rover,tag=arm2,limit=1] at @s run data merge entity @s {Pose:{Head:[-5f,0f,0f]}}
execute if score rover_timer story matches 125 as @e[tag=rover,tag=arm2,limit=1] at @s run data merge entity @s {Pose:{Head:[-10f,0f,0f]}}
execute if score rover_timer story matches 126 as @e[tag=rover,tag=arm2,limit=1] at @s run data merge entity @s {Pose:{Head:[-15f,0f,0f]}}
execute if score rover_timer story matches 127 as @e[tag=rover,tag=arm2,limit=1] at @s run data merge entity @s {Pose:{Head:[-20f,0f,0f]}}
execute if score rover_timer story matches 128 as @e[tag=rover,tag=arm2,limit=1] at @s run data merge entity @s {Pose:{Head:[-25f,0f,0f]}}
execute if score rover_timer story matches 129 as @e[tag=rover,tag=arm2,limit=1] at @s run data merge entity @s {Pose:{Head:[-30f,0f,0f]}}
execute if score rover_timer story matches 130 as @e[tag=rover,tag=arm2,limit=1] at @s run data merge entity @s {Pose:{Head:[-35f,0f,0f]}}
execute if score rover_timer story matches 131 as @e[tag=rover,tag=arm2,limit=1] at @s run data merge entity @s {Pose:{Head:[-40f,0f,0f]}}
execute if score rover_timer story matches 132 as @e[tag=rover,tag=arm2,limit=1] at @s run data merge entity @s {Pose:{Head:[-45f,0f,0f]}}
execute if score rover_timer story matches 133 as @e[tag=rover,tag=arm2,limit=1] at @s run data merge entity @s {Pose:{Head:[-50f,0f,0f]}}
execute if score rover_timer story matches 134 as @e[tag=rover,tag=arm2,limit=1] at @s run data merge entity @s {Pose:{Head:[-55f,0f,0f]}}
execute if score rover_timer story matches 135 as @e[tag=rover,tag=arm2,limit=1] at @s run data merge entity @s {Pose:{Head:[-60f,0f,0f]}}
execute if score rover_timer story matches 136 as @e[tag=rover,tag=arm2,limit=1] at @s run data merge entity @s {Pose:{Head:[-65f,0f,0f]}}
execute if score rover_timer story matches 137 as @e[tag=rover,tag=arm2,limit=1] at @s run data merge entity @s {Pose:{Head:[-70f,0f,0f]}}
execute if score rover_timer story matches 138 as @e[tag=rover,tag=arm2,limit=1] at @s run data merge entity @s {Pose:{Head:[-75f,0f,0f]}}
execute if score rover_timer story matches 139 as @e[tag=rover,tag=arm2,limit=1] at @s run data merge entity @s {Pose:{Head:[-80f,0f,0f]}}
execute if score rover_timer story matches 140 as @e[tag=rover,tag=arm2,limit=1] at @s run data merge entity @s {Pose:{Head:[-85f,0f,0f]}}
execute if score rover_timer story matches 141 as @e[tag=rover,tag=arm2,limit=1] at @s run data merge entity @s {Pose:{Head:[-90f,0f,0f]}}

execute if score rover_timer story matches 142 run kill @e[tag=rover,tag=arm2,limit=1]
execute if score rover_timer story matches 142 as @e[tag=rover,tag=arm,limit=1] at @s run replaceitem entity @s armor.head minecraft:iron_ingot{CustomModelData:21}

execute if score rover_timer story matches 143 as @e[tag=rover,tag=arm,limit=1] at @s run data merge entity @s {Pose:{Head:[-85f,0f,0f]}}
execute if score rover_timer story matches 144 as @e[tag=rover,tag=arm,limit=1] at @s run data merge entity @s {Pose:{Head:[-80f,0f,0f]}}
execute if score rover_timer story matches 145 as @e[tag=rover,tag=arm,limit=1] at @s run data merge entity @s {Pose:{Head:[-75f,0f,0f]}}
execute if score rover_timer story matches 146 as @e[tag=rover,tag=arm,limit=1] at @s run data merge entity @s {Pose:{Head:[-70f,0f,0f]}}
execute if score rover_timer story matches 147 as @e[tag=rover,tag=arm,limit=1] at @s run data merge entity @s {Pose:{Head:[-65f,0f,0f]}}
execute if score rover_timer story matches 148 as @e[tag=rover,tag=arm,limit=1] at @s run data merge entity @s {Pose:{Head:[-60f,0f,0f]}}
execute if score rover_timer story matches 149 as @e[tag=rover,tag=arm,limit=1] at @s run data merge entity @s {Pose:{Head:[-55f,0f,0f]}}
execute if score rover_timer story matches 150 as @e[tag=rover,tag=arm,limit=1] at @s run data merge entity @s {Pose:{Head:[-50f,0f,0f]}}
execute if score rover_timer story matches 151 as @e[tag=rover,tag=arm,limit=1] at @s run data merge entity @s {Pose:{Head:[-45f,0f,0f]}}
execute if score rover_timer story matches 152 as @e[tag=rover,tag=arm,limit=1] at @s run data merge entity @s {Pose:{Head:[-40f,0f,0f]}}
execute if score rover_timer story matches 153 as @e[tag=rover,tag=arm,limit=1] at @s run data merge entity @s {Pose:{Head:[-35f,0f,0f]}}
execute if score rover_timer story matches 154 as @e[tag=rover,tag=arm,limit=1] at @s run data merge entity @s {Pose:{Head:[-30f,0f,0f]}}
execute if score rover_timer story matches 155 as @e[tag=rover,tag=arm,limit=1] at @s run data merge entity @s {Pose:{Head:[-25f,0f,0f]}}
execute if score rover_timer story matches 156 as @e[tag=rover,tag=arm,limit=1] at @s run data merge entity @s {Pose:{Head:[-20f,0f,0f]}}
execute if score rover_timer story matches 157 as @e[tag=rover,tag=arm,limit=1] at @s run data merge entity @s {Pose:{Head:[-15f,0f,0f]}}
execute if score rover_timer story matches 158 as @e[tag=rover,tag=arm,limit=1] at @s run data merge entity @s {Pose:{Head:[-10f,0f,0f]}}
execute if score rover_timer story matches 159 as @e[tag=rover,tag=arm,limit=1] at @s run data merge entity @s {Pose:{Head:[-5f,0f,0f]}}
execute if score rover_timer story matches 160 as @e[tag=rover,tag=arm,limit=1] at @s run data merge entity @s {Pose:{Head:[0f,0f,0f]}}

execute if score rover_timer story matches 161 as @e[tag=rover,tag=arm,limit=1] at @s run data merge entity @s {Rotation:[435.0f,7.8f]}
execute if score rover_timer story matches 162 as @e[tag=rover,tag=arm,limit=1] at @s run data merge entity @s {Rotation:[425.0f,7.8f]}
execute if score rover_timer story matches 163 as @e[tag=rover,tag=arm,limit=1] at @s run data merge entity @s {Rotation:[415.0f,7.8f]}
execute if score rover_timer story matches 164 as @e[tag=rover,tag=arm,limit=1] at @s run data merge entity @s {Rotation:[405.0f,7.8f]}
execute if score rover_timer story matches 165 as @e[tag=rover,tag=arm,limit=1] at @s run data merge entity @s {Rotation:[395.0f,7.8f]}
execute if score rover_timer story matches 166 as @e[tag=rover,tag=arm,limit=1] at @s run data merge entity @s {Rotation:[385.0f,7.8f]}
execute if score rover_timer story matches 167 as @e[tag=rover,tag=arm,limit=1] at @s run data merge entity @s {Rotation:[375.0f,7.8f]}
execute if score rover_timer story matches 168 as @e[tag=rover,tag=arm,limit=1] at @s run data merge entity @s {Rotation:[365.0f,7.8f]}
execute if score rover_timer story matches 169 as @e[tag=rover,tag=arm,limit=1] at @s run data merge entity @s {Rotation:[355.0f,7.8f]}


execute if score rover_timer story matches 180 at @e[tag=rover,limit=1] run replaceitem entity @e[tag=rover,tag=body] armor.head minecraft:iron_ingot{CustomModelData:17}
execute if score rover_timer story matches 180 run kill @e[tag=rover,tag=arm,limit=1]

execute if score rover_timer story matches 200.. run scoreboard players set timer story 2
execute if score timer story matches 2.. run scoreboard players set rover_timer story 0