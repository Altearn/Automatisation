# Dialog Area
execute unless entity @e[tag=dialog_area] run summon minecraft:armor_stand 18 6 -1 {Invisible:1,NoGravity:1,Marker:1,Tags:["dialog_area"]}

# Dialog Timer
execute if score timer story matches 2.. run scoreboard players add timer story 1

# Motion PNJ
function scripts:scenario/animations/loop_motion
execute if score motion story matches 1 run function scripts:scenario/animations/motion

# Facing PNJ
function scripts:scenario/animations/facing

# Tablette
execute as @e[type=item,nbt={Item:{tag:{title:'Tablette'}}}] run data merge entity @s {PickupDelay:0s}



### ACCUEIL
# Accès non autorisé au bureaux
execute unless entity @a[tag=zone0] run fill 20 4 15 16 6 15 barrier replace air
execute positioned 18 5 15 as @a[tag=!zone0,distance=..2] run title @s actionbar {"text":"Vous n'avez pas encore accès à cet endroit pour le moment.","color":"red"}
# Accès autorisé au bureaux
execute if entity @a[tag=zone0] run fill 20 4 15 16 6 15 air replace barrier

# Step 0
execute if score step story matches 0 run function scripts:scenario/step0
# Step 1
execute if score step story matches 1 run function scripts:scenario/step1



### VISITE
# Accès non autorisé au labo
execute unless entity @a[tag=zone1] run fill 28 4 -2 28 6 0 barrier replace air
execute unless entity @a[tag=zone1] run fill 57 4 37 57 8 41 barrier replace air
execute positioned 28 5 -1 as @a[tag=!zone1,distance=..2] run title @s actionbar {"text":"Vous n'avez pas encore accès à cet endroit pour le moment.","color":"red"}
execute positioned 56 5 40 as @a[tag=!zone1,distance=..2] run title @s actionbar {"text":"Vous n'avez pas encore accès à cet endroit pour le moment.","color":"red"}
# Accès autorisé au labo
execute if entity @a[tag=zone1] run fill 28 4 -2 28 6 0 air replace barrier
execute if entity @a[tag=zone1] run fill 57 4 37 57 8 41 air replace barrier

# Step 2
execute if score step story matches 2 run function scripts:scenario/step2
# Step 3
execute if score step story matches 3 run function scripts:scenario/step3
# Step 4
execute if score step story matches 4 run function scripts:scenario/step4
# Step 5a
execute if score step story matches 5 run function scripts:scenario/step5a
# Step 5b
execute if score step story matches 51 run function scripts:scenario/step5b
# Step 6
execute if score step story matches 6 run function scripts:scenario/step6
# Step 7
execute if score step story matches 7 run function scripts:scenario/step7
# Step 8
execute if score step story matches 8 run function scripts:scenario/step8
# Step 9
execute if score step story matches 9 run function scripts:scenario/step9

# Accès non autorisé au rover
execute unless entity @a[tag=zone2] run fill 79 4 17 80 6 17 barrier replace air
execute positioned 80.0 5 17 as @a[tag=!zone2,distance=..2] run title @s actionbar {"text":"Vous n'avez pas encore accès à cet endroit pour le moment.","color":"red"}
# Accès autorisé au rover
execute if entity @a[tag=zone2] run fill 79 4 17 80 6 17 air replace barrier

# End animation Mme Pesier
execute if score step story matches 10..14 if score motion story matches 0 positioned 24 4 17 unless entity @e[tag=pesier,tag=!motion,distance=..1.5] run summon minecraft:armor_stand ~ ~0.5 ~ {Rotation:[0f],Invisible:1,NoGravity:1,Marker:1,Tags:["pnj","pesier"],Passengers:[{id:"pillager",Rotation:[0f],Silent:1,Invulnerable:1,NoAI:1,PersistenceRequired:1,Tags:["pnj","pesier"],CustomName:'{"text":"Mme Pesier"}',CustomNameVisible:1b,ArmorItems:[{},{},{},{id:"name_tag",Count:1,tag:{CustomModelData:2}}]}]}
execute if score step story matches 10..14 if score motion story matches 0 as @e[tag=pesier,tag=motion] at @s run tp @s ~ 200 ~



### VERIFICATIONS ET TEST
# Step 10
execute if score step story matches 10 run function scripts:scenario/step10
# Step 11
execute if score step story matches 11 run function scripts:scenario/step11
# Step 12
execute if score step story matches 12 run function scripts:scenario/step12
# Step 13
execute if score step story matches 13 run function scripts:scenario/step13
# Step 14
execute if score step story matches 14 run function scripts:scenario/step14
# Step 15
execute if score step story matches 15 run function scripts:scenario/step15
# Step 16
execute if score step story matches 16 run function scripts:scenario/step16
# Step 17
execute if score step story matches 17 run function scripts:scenario/step17


### PROGRAMMATION
# Step 18
execute if score step story matches 18 run function scripts:prog/main
execute if score step story matches 18 run function scripts:scenario/step18
# Step 19
execute if score step story matches 19 run function scripts:scenario/step19
# Step 20
execute if score step story matches 20 run function scripts:scenario/step20