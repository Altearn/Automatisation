### VERIFICATIONS ET TEST

# Dialog area
#execute if score timer story matches 1 as @e[tag=dialog_area] at @s run tp @s 80 7 20 ~5 ~
#execute if score timer story matches 1 as @e[tag=dialog_area] at @s run particle minecraft:totem_of_undying ^ ^ ^1.5 0.1 0.1 0.1 0 5 force @a[tag=player]

# Init dialog
# remove old arm
execute if score timer story matches 1 as @a[tag=player] if score arm general matches 0 if score @s talk_villager matches 1 at @e[tag=villager1] run playsound minecraft:block.lever.click master @s ~ ~ ~
execute if score timer story matches 1 as @a[tag=player] if score arm general matches 0 if score @s talk_villager matches 1 at @e[tag=villager1] run data modify entity @e[tag=rover,tag=body,limit=1] ArmorItems[3].tag.CustomModelData set value 2
execute if score timer story matches 1 as @a[tag=player] if score arm general matches 0 if score @s talk_villager matches 1 at @e[tag=villager1] run give @s minecraft:iron_ingot{old:1b,CustomModelData:18,display:{Name:'[{"text":"Bras défectueux","italic":false}]'}}
execute if score timer story matches 1 as @a[tag=player] if score arm general matches 0 if score @s talk_villager matches 1 at @e[tag=villager1] run scoreboard players set arm general 1

# place new arm
execute if score timer story matches 1 as @a[tag=player] if score arm general matches 1 if score @s talk_villager matches 2.. unless entity @s[nbt={SelectedItem:{tag:{new:1b}}}] run scoreboard players set @s talk_villager 1
execute if score timer story matches 1 as @a[tag=player] if score arm general matches 1 if score @s talk_villager matches 2.. if entity @s[nbt={SelectedItem:{tag:{new:1b}}}] at @e[tag=villager1] run playsound minecraft:block.lever.click master @s ~ ~ ~
execute if score timer story matches 1 as @a[tag=player] if score arm general matches 1 if score @s talk_villager matches 2.. if entity @s[nbt={SelectedItem:{tag:{new:1b}}}] at @e[tag=villager1] run data modify entity @e[tag=rover,tag=body,limit=1] ArmorItems[3].tag.CustomModelData set value 17
execute if score timer story matches 1 as @a[tag=player] if score arm general matches 1 if score @s talk_villager matches 2.. if entity @s[nbt={SelectedItem:{tag:{new:1b}}}] at @e[tag=villager1] run tp @e[tag=villager1] 0 200 0
execute if score timer story matches 1 as @a[tag=player] if score arm general matches 1 if score @s talk_villager matches 2.. if entity @s[nbt={SelectedItem:{tag:{new:1b}}}] at @e[tag=villager1] run scoreboard players set arm general 2
execute if score timer story matches 1 as @a[tag=player] if score arm general matches 2 if score @s talk_villager matches 2.. if entity @s[nbt={SelectedItem:{tag:{new:1b}}}] at @e[tag=villager1] run replaceitem entity @s weapon.mainhand minecraft:air
execute as @a[tag=player] if score @s talk_villager matches 2.. run scoreboard players reset @s talk_villager

# dialog text & actions
execute if score timer story matches 1 if score arm general matches 2 run tellraw @a[tag=player] ["",{"text":"\nM Duriff :","bold":true,"color":"gold"},{"text":" Je vais récupérer le bras défectueux si vous le voulez bien."}]
execute if score timer story matches 1 if score arm general matches 2 as @a[tag=player] at @s run playsound minecraft:entity.villager.trade master @s
execute if score timer story matches 1 if score arm general matches 2 as @a[tag=player] run function scripts:tablette/give
execute if score timer story matches 1 if score arm general matches 2 run clear @a[tag=player] minecraft:iron_ingot{old:1b}
execute if score timer story matches 1 if score arm general matches 2 run kill @e[type=item,nbt={Item:{tag:{old:1b}}}]
execute if score timer story matches 1 if score arm general matches 2 run kill @e[tag=arrow]
execute if score timer story matches 1 if score arm general matches 2 run scoreboard players set arm general 3


execute if score timer story matches 5 run data merge block 83 7 22 {Text1:'[{"text":"","color":"#FFFFFF"}]'}
execute if score timer story matches 5 run data merge block 83 7 21 {Text3:'[{"text":"","color":"#FFFFFF"}]',Text4:'[{"text":"\\uEF41","color":"#FFFFFF"}]'}
execute if score timer story matches 5 run data merge block 83 7 19 {Text4:'[{"text":"\\uEF47","color":"#FFFFFF"}]'}
execute if score timer story matches 5 run playsound minecraft:block.note_block.bit master @a[tag=player] 83 7 19 1 2
execute if score timer story matches 25 run data merge block 83 7 19 {Text4:'[{"text":"\\uEF49","color":"#FFFFFF"}]'}
execute if score timer story matches 45 run data merge block 83 7 19 {Text4:'[{"text":"\\uEF50","color":"#FFFFFF"}]'}
execute if score timer story matches 45 run playsound minecraft:block.note_block.bit master @a[tag=player] 83 7 19 1 2
execute if score timer story matches 65 run data merge block 83 7 19 {Text4:'[{"text":"\\uEF51","color":"#FFFFFF"}]'}
execute if score timer story matches 65 run playsound minecraft:block.note_block.bit master @a[tag=player] 83 7 19 1 2
execute if score timer story matches 85 run data merge block 83 7 19 {Text4:'[{"text":"\\uEF52","color":"#FFFFFF"}]'}
execute if score timer story matches 105 run data merge block 83 7 19 {Text4:'[{"text":"\\uEF53","color":"#FFFFFF"}]'}
execute if score timer story matches 105 run playsound minecraft:block.note_block.bit master @a[tag=player] 83 7 19 1 2


execute if score timer story matches 125 run data merge block 83 6 19 {Text1:'[{"text":"\\uEF54","color":"#FFFFFF"}]'}
execute if score timer story matches 125 run playsound minecraft:block.note_block.bit master @a[tag=player] 83 7 19 1 2
execute if score timer story matches 150 run data merge block 83 6 19 {Text1:'[{"text":"\\uEF55","color":"#FFFFFF"}]'}
execute if score timer story matches 170 run data merge block 83 6 19 {Text1:'[{"text":"\\uEF56","color":"#FFFFFF"}]'}
execute if score timer story matches 170 run playsound minecraft:block.note_block.bit master @a[tag=player] 83 7 19 1 2

execute if score timer story matches 190 run data merge block 83 6 19 {Text1:'[{"text":"\\uEF57","color":"#FFFFFF"}]'}
execute if score timer story matches 190 run playsound minecraft:block.note_block.bit master @a[tag=player] 83 7 19 1 2
execute if score timer story matches 210 run data merge block 83 6 19 {Text1:'[{"text":"\\uEF58","color":"#FFFFFF"}]'}
execute if score timer story matches 210 run data merge block 83 6 21 {Text1:'[{"text":"\\uEF59","color":"#FFFFFF"}]'}
execute if score timer story matches 210 run data merge block 83 7 21 {Text3:'[{"text":"","color":"#FFFFFF","clickEvent":{"action":"run_command","value":"/scoreboard players set timer story 2"}}]'}
execute if score timer story matches 210 run data merge block 83 7 22 {Text1:'[{"text":"\\uEF60","color":"#FFFFFF","clickEvent":{"action":"run_command","value":"/playsound minecraft:block.note_block.didgeridoo master @a"}}]'}
execute if score timer story matches 210 run playsound minecraft:block.note_block.didgeridoo master @a[tag=player] 83 7 19 1 1


# next step
execute if score timer story matches 211.. store success score timer story run scoreboard players set step story 16