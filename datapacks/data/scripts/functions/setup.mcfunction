tellraw Daminator4113 ["",{"text":"Rover Datapack ","color":"gold","clickEvent":{"action":"run_command","value":"/playsound minecraft:block.end_portal_frame.fill master @a"},"hoverEvent":{"action":"show_text","contents":"By Daminator4113 & Kikipunk"}},{"text":"[UNINSTALL]","bold":true,"color":"red","clickEvent":{"action":"run_command","value":"/function scripts:uninstall"},"hoverEvent":{"action":"show_text","contents":"Deletes all scores, tags and kills all entities related to the datapack."}}]
tellraw Kikipunk ["",{"text":"Rover Datapack ","color":"gold","clickEvent":{"action":"run_command","value":"/playsound minecraft:block.end_portal_frame.fill master @a"},"hoverEvent":{"action":"show_text","contents":"By Daminator4113 & Kikipunk"}},{"text":"[UNINSTALL]","bold":true,"color":"red","clickEvent":{"action":"run_command","value":"/function scripts:uninstall"},"hoverEvent":{"action":"show_text","contents":"Deletes all scores, tags and kills all entities related to the datapack."}}]

### Gamerules
gamerule sendCommandFeedback false
gamerule commandBlockOutput false
gamerule doDaylightCycle false
gamerule doMobSpawning false
gamerule doFireTick false
datapack disable vanilla

### Score Generaux
scoreboard objectives add Click minecraft.used:minecraft.carrot_on_a_stick
scoreboard objectives add general dummy
scoreboard objectives add talk_villager minecraft.custom:minecraft.talked_to_villager
scoreboard players set solar_panel general 0
scoreboard players set arm general 0
scoreboard objectives add sign trigger
scoreboard players reset @a sign
scoreboard objectives add loom minecraft.custom:minecraft.interact_with_loom
scoreboard players set @a loom 0

### Prog
kill @e[tag=test]
data merge storage chest {CurrentSlot:{}}
scoreboard objectives remove prog
scoreboard objectives remove complete_task
scoreboard objectives add prog dummy
scoreboard objectives add complete_task dummy
scoreboard players set logs prog 1
scoreboard players set bracket_si prog 0
scoreboard players set bracket_sinon prog 0
scoreboard players set bracket_boucle prog 0
scoreboard players set function prog 0
scoreboard players set Action prog 0
scoreboard players set LoopFlow prog 1
scoreboard players set LoopAction prog 1
scoreboard players set On prog 1
scoreboard players set inv_display prog 0
scoreboard players set prog_step prog 0
scoreboard players set level_prog story 0
scoreboard players set complete_task prog 0
# Chest Prog
data merge block 83 5 14 {Items:[]}
data merge block 83 5 15 {Items:[]}
# Chest temp
data merge block 86 5 14 {Items:[]}
data merge block 86 5 15 {Items:[]}
# Chest save
data merge storage chest_save {Step2:[],Step12:[],Step3:[],Step13:[],Step4:[],Step14:[],Step5:[],Step15:[],Step6:[],Step16:[],Step7:[],Step17:[],Step8:[],Step18:[]}
# lock chest
setblock 83 6 14 minecraft:purpur_pillar[axis=z]
setblock 83 6 15 minecraft:purpur_pillar[axis=y]




### Rover
kill @e[tag=rover]
function scripts:rover/summon_rover

scoreboard objectives add Animations dummy

scoreboard players set lf_wheel Animations 0
scoreboard players set lm_wheel Animations 0
scoreboard players set lb_wheel Animations 0

scoreboard players set rf_wheel Animations 0
scoreboard players set rm_wheel Animations 0
scoreboard players set rb_wheel Animations 0

scoreboard players set body Animations 0


### Player
effect clear @a
clear @a book
clear @a written_book
clear @a leather_chestplate
clear @a leather_boots
tag @a add player
tag @a remove zone0
tag @a remove zone1
tag @a remove zone2
scoreboard players reset @a talk_villager
scoreboard players reset @a Click
gamemode adventure @a[tag=player]
tp @a[tag=player] -10 4 -1 -90 0
effect give @a[tag=player] minecraft:saturation 100000 20 true
effect give @a[tag=player] minecraft:resistance 100000 20 true


### Scenario
scoreboard objectives add story dummy

scoreboard players set step story 0
scoreboard players set timer story 1
scoreboard players set motion story 0
scoreboard players set rover_anim story 0


### Sas (reset des sas)
scoreboard players set petit_sas general 10
fill 70 4 12 71 5 12 minecraft:black_stained_glass_pane
fill 73 4 14 73 5 15 minecraft:black_stained_glass_pane
scoreboard players set dome_sas general 10
clone 68 4 -19 68 7 -15 90 4 -9
clone 72 4 -44 75 7 -41 99 4 -5 masked normal


### Reset affichage pc
data merge block 83 7 19 {Text1:'[{"text":"","color":"#FFFFFF"}]',Text2:'[{"text":"","color":"#FFFFFF"}]',Text3:'[{"text":"","color":"#FFFFFF"}]',Text4:'[{"text":"","color":"#FFFFFF"}]'}
data merge block 83 7 21 {Text1:'[{"text":"","color":"#FFFFFF"}]',Text2:'[{"text":"","color":"#FFFFFF"}]',Text3:'[{"text":"","color":"#FFFFFF"}]',Text4:'[{"text":"","color":"#FFFFFF"}]'}
data merge block 83 6 19 {Text1:'[{"text":"","color":"#FFFFFF"}]',Text2:'[{"text":"","color":"#FFFFFF"}]',Text3:'[{"text":"","color":"#FFFFFF"}]',Text4:'[{"text":"","color":"#FFFFFF"}]'}
data merge block 83 6 21 {Text1:'[{"text":"","color":"#FFFFFF"}]',Text2:'[{"text":"","color":"#FFFFFF"}]',Text3:'[{"text":"","color":"#FFFFFF"}]',Text4:'[{"text":"","color":"#FFFFFF"}]'}
data merge block 83 7 22 {Text1:'[{"text":"","color":"#FFFFFF"}]',Text2:'[{"text":"","color":"#FFFFFF"}]',Text3:'[{"text":"","color":"#FFFFFF"}]',Text4:'[{"text":"","color":"#FFFFFF"}]'}


### PNJ
# porte du bureau de mme pesier
setblock 21 1 20 minecraft:redstone_block
# chaise de M Lussier
data modify block 82 4 25 SpawnData.ArmorItems[3].tag.CustomModelData set value 3

kill @e[tag=motion]
kill @e[tag=pnj]
kill @e[tag=arrow]
kill @e[tag=boisson]
summon armor_stand 56.15 4.10 54.00 {Tags:["boisson"],Invisible:1b,ShowArms:1b,NoGravity:1b,Marker:1b,DisabledSlots:4144959,ArmorItems:[{},{},{},{}],HandItems:[{id:"potion",Count:1b,tag:{CustomPotionColor:57343}},{}],Pose:{RightArm:[-160f,0f,0f]},Rotation:[90.0f,0.0f]}
data merge block 57 5 52 {Command: "execute as @e[tag=boisson,distance=..5] at @s run tp @s ~ ~-1 ~"}
setblock 10 4 18 minecraft:loom[facing=east]
clone 75 4 -17 75 6 -15 57 4 46


summon minecraft:villager 0 200 0 {PersistenceRequired:1,Tags:["pnj","villager1","villager"],Attributes:[{Name:"generic.knockbackResistance",Base:1f}],Silent:1,Invulnerable:1,NoAI:1b,ActiveEffects:[{Id:14,Amplifier:0,Duration:2147483647,ShowParticles:0b}]}
summon minecraft:villager 0 200 0 {PersistenceRequired:1,Tags:["pnj","villager2","villager"],Attributes:[{Name:"generic.knockbackResistance",Base:1f}],Silent:1,Invulnerable:1,NoAI:1b,ActiveEffects:[{Id:14,Amplifier:0,Duration:2147483647,ShowParticles:0b}]}
summon minecraft:villager 0 200 0 {PersistenceRequired:1,Tags:["pnj","villager3","villager"],Attributes:[{Name:"generic.knockbackResistance",Base:1f}],Silent:1,Invulnerable:1,NoAI:1b,ActiveEffects:[{Id:14,Amplifier:0,Duration:2147483647,ShowParticles:0b}]}
summon minecraft:villager 0 200 0 {PersistenceRequired:1,Tags:["pnj","villager4","villager"],Attributes:[{Name:"generic.knockbackResistance",Base:1f}],Silent:1,Invulnerable:1,NoAI:1b,ActiveEffects:[{Id:14,Amplifier:0,Duration:2147483647,ShowParticles:0b}]}
summon minecraft:villager 0 200 0 {PersistenceRequired:1,Tags:["pnj","villager5","villager"],Attributes:[{Name:"generic.knockbackResistance",Base:1f}],Silent:1,Invulnerable:1,NoAI:1b,ActiveEffects:[{Id:14,Amplifier:0,Duration:2147483647,ShowParticles:0b}]}
summon minecraft:villager 0 200 0 {PersistenceRequired:1,Tags:["pnj","villager6","villager"],Attributes:[{Name:"generic.knockbackResistance",Base:1f}],Silent:1,Invulnerable:1,NoAI:1b,ActiveEffects:[{Id:14,Amplifier:0,Duration:2147483647,ShowParticles:0b}]}

summon minecraft:pillager 0 200 0 {Rotation:[0f],Silent:1,Invulnerable:1,NoAI:1,PersistenceRequired:1,Tags:["pnj","pesier"],CustomName:'{"text":"Mme Pesier"}',CustomNameVisible:1b,ArmorItems:[{},{},{},{id:"name_tag",Count:1,tag:{CustomModelData:2}}]}
summon minecraft:armor_stand 16 4.5 -2 {Rotation:[90f],Invisible:1,NoGravity:1,Marker:1,Tags:["pnj","cassagne"],Passengers:[{id:"pillager",Rotation:[90f],Silent:1,Invulnerable:1,NoAI:1,PersistenceRequired:1,Tags:["pnj","cassagne"],CustomName:'{"text":"M Cassagne"}',CustomNameVisible:1b,ArmorItems:[{},{},{},{id:"name_tag",Count:1,tag:{CustomModelData:1}}]}]}

summon minecraft:armor_stand 78 4.5 19 {Rotation:[180f],Invisible:1,NoGravity:1,Marker:1,Tags:["pnj","dupont"],Passengers:[{id:"pillager",Rotation:[180f],Silent:1,Invulnerable:1,NoAI:1,PersistenceRequired:1,Tags:["pnj","dupont"],CustomName:'{"text":"M Dupont"}',CustomNameVisible:1b,ArmorItems:[{},{},{},{id:"name_tag",Count:1,tag:{CustomModelData:3}}]}]}
summon minecraft:armor_stand 82 4.5 25 {Rotation:[-90f],Invisible:1,NoGravity:1,Marker:1,Tags:["pnj","lussier"],Passengers:[{id:"pillager",Rotation:[-90f],Silent:1,Invulnerable:1,NoAI:1,PersistenceRequired:1,Tags:["pnj","lussier"],CustomName:'{"text":"M Lussier"}',CustomNameVisible:1b,ArmorItems:[{},{},{},{id:"name_tag",Count:1,tag:{CustomModelData:6}}]}]}
summon minecraft:armor_stand 12 11.5 43 {Rotation:[0f],Invisible:1,NoGravity:1,Marker:1,Tags:["pnj","corbin"],Passengers:[{id:"pillager",Rotation:[0f],Silent:1,Invulnerable:1,NoAI:1,PersistenceRequired:1,Tags:["pnj","corbin"],CustomName:'{"text":"M Corbin"}',CustomNameVisible:1b,ArmorItems:[{},{},{},{id:"name_tag",Count:1,tag:{CustomModelData:7}}]}]}
summon minecraft:armor_stand 25 11.5 26 {Rotation:[0f],Invisible:1,NoGravity:1,Marker:1,Tags:["pnj","lesage"],Passengers:[{id:"pillager",Rotation:[0f],Silent:1,Invulnerable:1,NoAI:1,PersistenceRequired:1,Tags:["pnj","lesage"],CustomName:'{"text":"M Lesage"}',CustomNameVisible:1b,ArmorItems:[{},{},{},{id:"name_tag",Count:1,tag:{CustomModelData:9}}]}]}
summon minecraft:armor_stand 11 11.5 9 {Rotation:[0f],Invisible:1,NoGravity:1,Marker:1,Tags:["pnj","gabriaux"],Passengers:[{id:"pillager",Rotation:[0f],Silent:1,Invulnerable:1,NoAI:1,PersistenceRequired:1,Tags:["pnj","gabriaux"],CustomName:'{"text":"M Gabriaux"}',CustomNameVisible:1b,ArmorItems:[{},{},{},{id:"name_tag",Count:1,tag:{CustomModelData:8}}]}]}
summon minecraft:armor_stand 85 9.5 25 {Rotation:[-90f],Invisible:1,NoGravity:1,Marker:1,Tags:["pnj","leblanc"],Passengers:[{id:"pillager",Rotation:[-90f],Silent:1,Invulnerable:1,NoAI:1,PersistenceRequired:1,Tags:["pnj","leblanc"],CustomName:'{"text":"Mme Leblanc"}',CustomNameVisible:1b,ArmorItems:[{},{},{},{id:"name_tag",Count:1,tag:{CustomModelData:5}}]}]}
summon minecraft:armor_stand 35 4.5 30 {Rotation:[90f],Invisible:1,NoGravity:1,Marker:1,Tags:["pnj","laux"],Passengers:[{id:"pillager",Rotation:[90f],Silent:1,Invulnerable:1,NoAI:1,PersistenceRequired:1,Tags:["pnj","laux"],CustomName:'{"text":"Mme Laux"}',CustomNameVisible:1b,ArmorItems:[{},{},{},{id:"name_tag",Count:1,tag:{CustomModelData:10}}]}]}
summon minecraft:armor_stand 33 4.5 30 {Rotation:[-90f],Invisible:1,NoGravity:1,Marker:1,Tags:["pnj","pinson"],Passengers:[{id:"pillager",Rotation:[-90f],Silent:1,Invulnerable:1,NoAI:1,PersistenceRequired:1,Tags:["pnj","pinson"],CustomName:'{"text":"M Pinson"}',CustomNameVisible:1b,ArmorItems:[{},{},{},{id:"name_tag",Count:1,tag:{CustomModelData:15}}]}]}
summon minecraft:armor_stand 40 4.5 47 {Rotation:[0f],Invisible:1,NoGravity:1,Marker:1,Tags:["pnj","grillaud"],Passengers:[{id:"pillager",Rotation:[0f],Silent:1,Invulnerable:1,NoAI:1,PersistenceRequired:1,Tags:["pnj","grillaud"],CustomName:'{"text":"M Grillaud"}',CustomNameVisible:1b,ArmorItems:[{},{},{},{id:"name_tag",Count:1,tag:{CustomModelData:16}}]}]}
summon minecraft:armor_stand 36 4.5 55 {Rotation:[180f],Invisible:1,NoGravity:1,Marker:1,Tags:["pnj","duchesne"],Passengers:[{id:"pillager",Rotation:[180f],Silent:1,Invulnerable:1,NoAI:1,PersistenceRequired:1,Tags:["pnj","duchesne"],CustomName:'{"text":"Mme Duchesne"}',CustomNameVisible:1b,ArmorItems:[{},{},{},{id:"name_tag",Count:1,tag:{CustomModelData:11}}]}]}
summon minecraft:pillager 25 4 53 {Rotation:[180f],Silent:1,Invulnerable:1,NoAI:1,PersistenceRequired:1,Tags:["pnj","jack"],CustomName:'{"text":"Jack"}',CustomNameVisible:1b,ArmorItems:[{},{},{},{id:"name_tag",Count:1,tag:{CustomModelData:19}}]}
summon minecraft:pillager 18 4 45 {Rotation:[-90f],Silent:1,Invulnerable:1,NoAI:1,PersistenceRequired:1,Tags:["pnj","steve"],CustomName:'{"text":"Steve"}',CustomNameVisible:1b,ArmorItems:[{},{},{},{id:"name_tag",Count:1,tag:{CustomModelData:20}}]}

summon minecraft:pillager 73 4 -9 {Rotation:[0f],Silent:1,Invulnerable:1,NoAI:1,PersistenceRequired:1,Tags:["pnj","duriff","loop_motion_0"],CustomName:'{"text":"M Duriff"}',CustomNameVisible:1b,ArmorItems:[{},{},{},{id:"name_tag",Count:1,tag:{CustomModelData:4}}]}
summon minecraft:pillager 12 11 9 {Rotation:[0f],Silent:1,Invulnerable:1,NoAI:1,PersistenceRequired:1,Tags:["pnj","tachel","loop_motion_1"],CustomName:'{"text":"Mme Tachel"}',CustomNameVisible:1b,ArmorItems:[{},{},{},{id:"name_tag",Count:1,tag:{CustomModelData:12}}]}
summon minecraft:pillager 55 4 55 {Rotation:[0f],Silent:1,Invulnerable:1,NoAI:1,PersistenceRequired:1,Tags:["pnj","chatigny","loop_motion_2"],CustomName:'{"text":"Mme Chatigny"}',CustomNameVisible:1b,ArmorItems:[{},{},{},{id:"name_tag",Count:1,tag:{CustomModelData:13}}]}
summon minecraft:pillager 77 4 19 {Rotation:[0f],Silent:1,Invulnerable:1,NoAI:1,PersistenceRequired:1,Tags:["pnj","lanoie","loop_motion_3"],CustomName:'{"text":"M Lanoie"}',CustomNameVisible:1b,ArmorItems:[{},{},{},{id:"name_tag",Count:1,tag:{CustomModelData:17}}]}
summon minecraft:pillager 25 4 51 {Rotation:[0f],Silent:1,Invulnerable:1,NoAI:1,PersistenceRequired:1,Tags:["pnj","granjean","loop_motion_4"],CustomName:'{"text":"M Granjean"}',CustomNameVisible:1b,ArmorItems:[{},{},{},{id:"name_tag",Count:1,tag:{CustomModelData:18}}]}
summon minecraft:pillager 25 4 25 {Rotation:[0f],Silent:1,Invulnerable:1,NoAI:1,PersistenceRequired:1,Tags:["pnj","julie","loop_motion_5"],CustomName:'{"text":"Mme Julie"}',CustomNameVisible:1b,ArmorItems:[{},{},{},{id:"name_tag",Count:1,tag:{CustomModelData:14}}]}
summon minecraft:pillager 25 4 25 {Rotation:[90f],Silent:1,Invulnerable:1,NoAI:1,PersistenceRequired:1,Tags:["pnj","greg","loop_motion_6"],CustomName:'{"text":"Greg"}',CustomNameVisible:1b,ArmorItems:[{},{},{},{id:"name_tag",Count:1,tag:{CustomModelData:21}}]}


### Modules
kill @e[tag=module]
kill @e[type=item,nbt={Item:{id:"minecraft:daylight_detector"}}]
kill @e[type=item,nbt={Item:{id:"minecraft:iron_ingot",tag:{old:1b}}}]
kill @e[type=item,nbt={Item:{id:"minecraft:iron_ingot",tag:{new:1b}}}]
clear @a minecraft:daylight_detector
clear @a minecraft:iron_ingot