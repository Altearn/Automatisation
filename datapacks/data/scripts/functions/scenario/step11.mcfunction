### VERIFICATIONS ET TEST

# Init dialog
execute if score timer story matches 1 as @a[tag=player] if score @s talk_villager matches 1.. at @e[tag=villager1] run playsound minecraft:block.bell.resonate master @s ~ ~ ~ 1 1.5
execute if score timer story matches 1 as @a[tag=player] if score @s talk_villager matches 1.. at @e[tag=villager1] run playsound minecraft:block.lever.click master @s ~ ~ ~
execute if score timer story matches 1 as @a[tag=player] if score @s talk_villager matches 1.. run tp @e[tag=villager1] 0 200 0
execute if score timer story matches 1 as @a[tag=player] if score @s talk_villager matches 1.. run kill @e[tag=arrow]
execute if score timer story matches 1 as @a[tag=player] if score @s talk_villager matches 1.. run scoreboard players set timer story 2
execute as @a[tag=player] if score @s talk_villager matches 1.. run scoreboard players reset @s talk_villager

# dialog text & actions
execute if score timer story matches 40 run data merge block 83 7 19 {Text1:'[{"text":"\\uEF01","color":"#FFFFFF"}]'}
execute if score timer story matches 40 run playsound minecraft:block.note_block.bit master @a[tag=player] 83 7 19 1 2

execute if score timer story matches 80 run data merge block 83 7 19 {Text1:'[{"text":"\\uEF02","color":"#FFFFFF"}]'}
execute if score timer story matches 80 run playsound minecraft:block.note_block.bit master @a[tag=player] 83 7 19 1 2

execute if score timer story matches 100 run data merge block 83 7 19 {Text2:'[{"text":"\\uEF03","color":"#FFFFFF"}]'}
execute if score timer story matches 100 run playsound minecraft:block.note_block.bit master @a[tag=player] 83 7 19 1 2
execute if score timer story matches 120 run data merge block 83 7 19 {Text2:'[{"text":"\\uEF04","color":"#FFFFFF"}]'}
execute if score timer story matches 140 run data merge block 83 7 19 {Text2:'[{"text":"\\uEF05","color":"#FFFFFF"}]'}
execute if score timer story matches 140 run data merge block 83 7 21 {Text2:'[{"text":"\\uEF06","color":"#FFFFFF"}]'}
execute if score timer story matches 140 run playsound minecraft:block.note_block.bit master @a[tag=player] 83 7 19 1 2

execute if score timer story matches 160 run data merge block 83 7 19 {Text3:'[{"text":"\\uEF07","color":"#FFFFFF"}]'}
execute if score timer story matches 160 run playsound minecraft:block.note_block.bit master @a[tag=player] 83 7 19 1 2
execute if score timer story matches 200 run data merge block 83 7 19 {Text3:'[{"text":"\\uEF08","color":"#FFFFFF"}]'}
execute if score timer story matches 220 run data merge block 83 7 19 {Text3:'[{"text":"\\uEF09","color":"#FFFFFF"}]'}
execute if score timer story matches 220 run playsound minecraft:block.note_block.bit master @a[tag=player] 83 7 19 1 2

execute if score timer story matches 240 run data merge block 83 7 19 {Text4:'[{"text":"\\uEF10","color":"#FFFFFF"}]'}
execute if score timer story matches 240 run playsound minecraft:block.note_block.bit master @a[tag=player] 83 7 19 1 2
execute if score timer story matches 260 run data merge block 83 7 19 {Text4:'[{"text":"\\uEF11","color":"#FFFFFF"}]'}
execute if score timer story matches 260 run playsound minecraft:block.note_block.bit master @a[tag=player] 83 7 19 1 2

execute if score timer story matches 260 run data merge block 83 7 22 {Text1:'[{"text":"\\uEF00","color":"#FFFFFF","clickEvent":{"action":"run_command","value":"/playsound minecraft:block.note_block.didgeridoo master @a"}}]'}
execute if score timer story matches 260 run data merge block 83 7 21 {Text3:'[{"text":"","color":"#FFFFFF","clickEvent":{"action":"run_command","value":"/execute if score solar_panel general matches 2 if score step story matches 14 run scoreboard players set timer story 2"}}]',Text4:'[{"text":"","color":"#FFFFFF","clickEvent":{"action":"run_command","value":"/execute if score step story matches ..13 run function scripts:scenario/verification/solar_panel"}}]'}
execute if score timer story matches 260 run playsound minecraft:block.note_block.didgeridoo master @a[tag=player] 83 7 19 1 1

execute if score timer story matches 260 run summon minecraft:item 77.00 5.00 -9.50 {Age:-32768,Item:{id:"minecraft:daylight_detector",Count:1b,tag:{unique:1b,display:{Name:'{"text":"Panneau Solaire","italic":false}'}}},tag:["module"]}
execute if score timer story matches 260 run summon minecraft:item 80.00 5.00 -9.50 {Age:-32768,Item:{id:"minecraft:daylight_detector",Count:1b,tag:{unique:2b,display:{Name:'{"text":"Panneau Solaire","italic":false}'}}},tag:["module"]}

execute if score timer story matches 260 as @a[tag=player] run function scripts:tablette/give

# next step
execute if score timer story matches 261.. store success score timer story run scoreboard players set step story 12