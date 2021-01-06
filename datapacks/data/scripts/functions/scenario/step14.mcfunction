### VERIFICATIONS ET TEST

# dialog text & actions
execute if score timer story matches 5 run data merge block 83 7 22 {Text1:'[{"text":"","color":"#FFFFFF"}]'}
execute if score timer story matches 5 run data merge block 83 7 21 {Text3:'[{"text":"","color":"#FFFFFF"}]',Text4:'[{"text":"","color":"#FFFFFF"}]'}
execute if score timer story matches 5 run data merge block 83 7 19 {Text4:'[{"text":"\\uEF12","color":"#FFFFFF"}]'}
execute if score timer story matches 5 run playsound minecraft:block.note_block.bit master @a[tag=player] 83 7 19 1 2
execute if score timer story matches 5 run scoreboard players set timer_temp general 0

execute if score timer story matches 20 run data merge block 83 7 19 {Text4:'[{"text":"\\uEF13","color":"#FFFFFF"}]'}
execute if score timer story matches 40 run data merge block 83 7 19 {Text4:'[{"text":"\\uEF14","color":"#FFFFFF"}]'}
execute if score timer story matches 40 run data merge block 83 7 21 {Text4:'[{"text":"\\uEF15","color":"#FFFFFF"}]'}
execute if score timer story matches 40 run playsound minecraft:block.note_block.bit master @a[tag=player] 83 7 19 1 2

execute if score timer story matches 60 run data merge block 83 7 19 {Text4:'[{"text":"\\uEF16","color":"#FFFFFF"}]'}
execute if score timer story matches 60 run playsound minecraft:block.note_block.bit master @a[tag=player] 83 7 19 1 2
execute if score timer story matches 80 run data merge block 83 7 19 {Text4:'[{"text":"\\uEF17","color":"#FFFFFF"}]'}
execute if score timer story matches 110 run data merge block 83 7 19 {Text4:'[{"text":"\\uEF18","color":"#FFFFFF"}]'}
execute if score timer story matches 110 run playsound minecraft:block.note_block.bit master @a[tag=player] 83 7 19 1 2

execute if score timer story matches 130 run data merge block 83 7 19 {Text4:'[{"text":"\\uEF19","color":"#FFFFFF"}]'}
execute if score timer story matches 130 run playsound minecraft:block.note_block.bit master @a[tag=player] 83 7 19 1 2
execute if score timer story matches 150 run data merge block 83 7 19 {Text4:'[{"text":"\\uEF20","color":"#FFFFFF"}]'}
execute if score timer story matches 180 run data merge block 83 7 19 {Text4:'[{"text":"\\uEF21","color":"#FFFFFF"}]'}
execute if score timer story matches 180 run playsound minecraft:block.note_block.bit master @a[tag=player] 83 7 19 1 2

execute if score timer story matches 200 run data merge block 83 6 19 {Text1:'[{"text":"\\uEF22","color":"#FFFFFF"}]'}
execute if score timer story matches 200 run playsound minecraft:block.note_block.bit master @a[tag=player] 83 7 19 1 2
execute if score timer story matches 220 run data merge block 83 6 19 {Text1:'[{"text":"\\uEF23","color":"#FFFFFF"}]'}
execute if score timer story matches 240 run data merge block 83 6 19 {Text1:'[{"text":"\\uEF24","color":"#FFFFFF"}]'}
execute if score timer story matches 240 run playsound minecraft:block.note_block.bit master @a[tag=player] 83 7 19 1 2

execute if score timer story matches 260 run data merge block 83 6 19 {Text1:'[{"text":"\\uEF25","color":"#FFFFFF"}]'}
execute if score timer story matches 260 run data merge block 83 6 21 {Text1:'[{"text":"\\uEF26","color":"#FFFFFF"}]'}
execute if score timer story matches 260 run playsound minecraft:block.note_block.chime master @a[tag=player] 83 7 19 1 1


execute if score timer story matches 310 run tellraw @a[tag=player] ["",{"text":"\nM Lussier :","bold":true,"color":"gold"},{"text":" Les modules sont tous présent, parfais. Je lance l'initialisation."}]
execute if score timer story matches 310 as @a[tag=player] at @s run playsound minecraft:entity.villager.yes master @s

execute if score timer story matches 350 run data merge block 83 7 19 {Text1:'[{"text":"","color":"#FFFFFF"}]',Text2:'[{"text":"","color":"#FFFFFF"}]',Text3:'[{"text":"","color":"#FFFFFF"}]',Text4:'[{"text":"","color":"#FFFFFF"}]'}
execute if score timer story matches 350 run data merge block 83 7 21 {Text1:'[{"text":"","color":"#FFFFFF"}]',Text2:'[{"text":"","color":"#FFFFFF"}]',Text3:'[{"text":"","color":"#FFFFFF"}]',Text4:'[{"text":"","color":"#FFFFFF"}]'}
execute if score timer story matches 350 run data merge block 83 6 19 {Text1:'[{"text":"","color":"#FFFFFF"}]',Text2:'[{"text":"","color":"#FFFFFF"}]',Text3:'[{"text":"","color":"#FFFFFF"}]',Text4:'[{"text":"","color":"#FFFFFF"}]'}
execute if score timer story matches 350 run data merge block 83 6 21 {Text1:'[{"text":"","color":"#FFFFFF"}]',Text2:'[{"text":"","color":"#FFFFFF"}]',Text3:'[{"text":"","color":"#FFFFFF"}]',Text4:'[{"text":"","color":"#FFFFFF"}]'}
execute if score timer story matches 350 run data merge block 83 7 22 {Text1:'[{"text":"","color":"#FFFFFF"}]',Text2:'[{"text":"","color":"#FFFFFF"}]',Text3:'[{"text":"","color":"#FFFFFF"}]',Text4:'[{"text":"","color":"#FFFFFF"}]'}
execute if score timer story matches 350 run data merge block 83 7 19 {Text1:'[{"text":"\\uEF30","color":"#FFFFFF"}]'}
execute if score timer story matches 350 run playsound minecraft:block.note_block.bit master @a[tag=player] 83 7 19 1 2


execute if score timer story matches 370 run data merge block 83 7 19 {Text2:'[{"text":"\\uEF31","color":"#FFFFFF"}]'}
execute if score timer story matches 370 run playsound minecraft:block.note_block.bit master @a[tag=player] 83 7 19 1 2
execute if score timer story matches 390 run data merge block 83 7 19 {Text2:'[{"text":"\\uEF32","color":"#FFFFFF"}]'}
execute if score timer story matches 410 run data merge block 83 7 19 {Text2:'[{"text":"\\uEF33","color":"#FFFFFF"}]'}
execute if score timer story matches 410 run data merge block 83 7 21 {Text2:'[{"text":"\\uEF34","color":"#FFFFFF"}]'}
execute if score timer story matches 410 run playsound minecraft:block.note_block.bit master @a[tag=player] 83 7 19 1 2

execute if score timer story matches 430 run data merge block 83 7 19 {Text3:'[{"text":"\\uEF35","color":"#FFFFFF"}]'}
execute if score timer story matches 430 run playsound minecraft:block.note_block.bit master @a[tag=player] 83 7 19 1 2
execute if score timer story matches 450 run data merge block 83 7 19 {Text3:'[{"text":"\\uEF36","color":"#FFFFFF"}]'}
execute if score timer story matches 470 run data merge block 83 7 19 {Text3:'[{"text":"\\uEF37","color":"#FFFFFF"}]'}
execute if score timer story matches 470 run playsound minecraft:block.note_block.bit master @a[tag=player] 83 7 19 1 2

execute if score timer story matches 490 run data merge block 83 7 19 {Text4:'[{"text":"\\uEF38","color":"#FFFFFF"}]'}
execute if score timer story matches 490 run playsound minecraft:block.note_block.bit master @a[tag=player] 83 7 19 1 2
execute if score timer story matches 520 run data merge block 83 7 19 {Text4:'[{"text":"\\uEF39","color":"#FFFFFF"}]'}
execute if score timer story matches 540 run data merge block 83 7 19 {Text4:'[{"text":"\\uEF40","color":"#FFFFFF"}]'}
execute if score timer story matches 540 run data merge block 83 7 21 {Text4:'[{"text":"\\uEF41","color":"#FFFFFF"}]'}
execute if score timer story matches 540 run playsound minecraft:block.note_block.bit master @a[tag=player] 83 7 19 1 2



execute if score timer story matches 560 run data merge block 83 7 19 {Text4:'[{"text":"\\uEF42","color":"#FFFFFF"}]'}
execute if score timer story matches 560 run playsound minecraft:block.note_block.bit master @a[tag=player] 83 7 19 1 2
execute if score timer story matches 580 run data merge block 83 7 19 {Text4:'[{"text":"\\uEF43","color":"#FFFFFF"}]'}
execute if score timer story matches 600 run data merge block 83 7 19 {Text4:'[{"text":"\\uEF44","color":"#FFFFFF"}]'}
execute if score timer story matches 600 run data merge block 83 7 21 {Text3:'[{"text":"","color":"#FFFFFF","clickEvent":{"action":"run_command","value":"/execute if score arm general matches ..2 run function scripts:scenario/verification/arm"}}]',Text4:'[{"text":"\\uEF45","color":"#FFFFFF","clickEvent":{"action":"run_command","value":"/execute if score arm general matches 3 run scoreboard players set timer story 2"}}]'}
execute if score timer story matches 600 run data merge block 83 7 22 {Text1:'[{"text":"\\uEF46","color":"#FFFFFF","clickEvent":{"action":"run_command","value":"/playsound minecraft:block.note_block.didgeridoo master @a"}}]'}
execute if score timer story matches 600 run playsound minecraft:block.note_block.didgeridoo master @a[tag=player] 83 7 19 1 1

execute if score timer story matches 600 as @a[tag=player] run function scripts:tablette/give

execute if score timer story matches 600 run summon minecraft:item 77.00 6.00 -9.5 {Age:-32768,Item:{id:"minecraft:iron_ingot",Count:1b,tag:{new:1b,CustomModelData:18,display:{Name:'[{"text":"Bras de remplacement","italic":false}]'}}},tag:["module"]}
execute if score timer story matches 600 at @e[tag=rover,limit=1,tag=!base] run tp @e[tag=villager1] ^-0.3 ^ ^0.6
execute if score timer story matches 601 at @e[tag=villager1] run summon item ~ ~1.5 ~ {Item:{id:"stick",Count:1,tag:{CustomModelData:6}},Age:-32768,PickupDelay:32767,Glowing:1,Tags:["arrow"],NoGravity:1}

# next step
execute if score timer story matches 601.. store success score timer story run scoreboard players set step story 15