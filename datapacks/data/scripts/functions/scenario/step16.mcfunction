### VERIFICATIONS ET TEST

# Dialog area
#execute if score timer story matches 1 as @e[tag=dialog_area] at @s run tp @s 80 7 20 ~5 ~
#execute if score timer story matches 1 as @e[tag=dialog_area] at @s run particle minecraft:totem_of_undying ^ ^ ^1.5 0.1 0.1 0.1 0 5 force @a[tag=player]

# Init dialog

# dialog text & actions
execute if score timer story matches 5 run data merge block 83 7 22 {Text1:'[{"text":"","color":"#FFFFFF"}]'}
execute if score timer story matches 5 run data merge block 83 7 21 {Text3:'[{"text":"","color":"#FFFFFF"}]'}
execute if score timer story matches 5 run data merge block 83 6 21 {Text1:'[{"text":"","color":"#FFFFFF"}]'}
execute if score timer story matches 5 run data merge block 83 6 19 {Text1:'[{"text":"\\uEF61","color":"#FFFFFF"}]'}
execute if score timer story matches 5 run playsound minecraft:block.note_block.bit master @a[tag=player] 83 7 19 1 2
execute if score timer story matches 25 run data merge block 83 6 19 {Text1:'[{"text":"\\uEF62","color":"#FFFFFF"}]'}
execute if score timer story matches 25 run playsound minecraft:block.note_block.bit master @a[tag=player] 83 7 19 1 2
execute if score timer story matches 45 run data merge block 83 6 19 {Text1:'[{"text":"\\uEF63","color":"#FFFFFF"}]'}
execute if score timer story matches 45 run playsound minecraft:block.note_block.bit master @a[tag=player] 83 7 19 1 2
execute if score timer story matches 65 run data merge block 83 6 19 {Text1:'[{"text":"\\uEF64","color":"#FFFFFF"}]'}
execute if score timer story matches 65 run playsound minecraft:block.note_block.bit master @a[tag=player] 83 7 19 1 2

execute if score timer story matches 85 run data merge block 83 6 19 {Text2:'[{"text":"\\uEF65","color":"#FFFFFF"}]'}
execute if score timer story matches 85 run playsound minecraft:block.note_block.chime master @a[tag=player] 83 7 19 1 1

execute if score timer story matches 105 run data merge block 83 6 19 {Text4:'[{"text":"\\uEF66","color":"#FFFFFF"}]'}
execute if score timer story matches 105 run playsound minecraft:block.note_block.chime master @a[tag=player] 83 7 19 1 1

execute if score timer story matches 120 run tellraw @a[tag=player] ["",{"text":"\nM Lussier :","bold":true,"color":"gold"},{"text":" La procédure de test est terminé, je préviens Mme Pesier. Elle va surement vous contacter via votre tablette."}]
execute if score timer story matches 120 as @a[tag=player] at @s run playsound minecraft:entity.villager.trade master @s
execute if score timer story matches 120 as @a[tag=player] run function scripts:tablette/give
execute if score timer story matches 120 run scoreboard players enable @a[tag=player] sign

# next step
execute if score timer story matches 121.. store success score timer story run scoreboard players set step story 17