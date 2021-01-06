### Store all steps
execute if score Read prog matches 0 run scoreboard objectives remove complete_task
execute if score Read prog matches 0 run scoreboard objectives add complete_task dummy
execute if score Read prog matches 0 run data merge storage chest {Read:[],Loop:[],ReadLoop:[],Check:[]}

# Chest1
execute if score Read prog matches 0 run data merge storage chest {Items:[]}
execute if score Read prog matches 0 run data modify storage minecraft:chest Items set from block 83 5 14 Items

execute if score Read prog matches 0 run scoreboard players set Read prog 1

execute if score Read prog matches 1 if data block 83 5 14 Items[0] run data modify storage minecraft:chest Read insert -1 value {}
execute if score Read prog matches 1 run data modify storage minecraft:chest Read[-1].Count set from storage minecraft:chest Items[0].Count
execute if score Read prog matches 1 run data modify storage minecraft:chest Read[-1].Action set from storage minecraft:chest Items[0].tag.CustomModelData
execute if score Read prog matches 1 run data modify storage minecraft:chest Read[-1].IfType set from storage minecraft:chest Items[0].tag.IfType
execute if score Read prog matches 1 run data modify storage minecraft:chest Read[-1].FunctionType set from storage minecraft:chest Items[0].tag.FunctionType
execute if score Read prog matches 1 run data modify storage minecraft:chest Read[-1].DeplacementType set from storage minecraft:chest Items[0].tag.DeplacementType
execute if score Read prog matches 1 run data modify storage minecraft:chest Read[-1].BrasType set from storage minecraft:chest Items[0].tag.BrasType
execute if score Read prog matches 1 run data remove storage minecraft:chest Items[0]

execute if score Read prog matches 1 unless data storage minecraft:chest Items[0] run scoreboard players set Read prog 2

# Chest2
execute if score Read prog matches 2 run data merge storage chest {Items:[]}
execute if score Read prog matches 2 run data modify storage minecraft:chest Items set from block 83 5 15 Items

execute if score Read prog matches 2 run scoreboard players set Read prog 3

execute if score Read prog matches 3 if data block 83 5 15 Items[0] run data modify storage minecraft:chest Read insert -1 value {}
execute if score Read prog matches 3 run data modify storage minecraft:chest Read[-1].Count set from storage minecraft:chest Items[0].Count
execute if score Read prog matches 3 run data modify storage minecraft:chest Read[-1].Action set from storage minecraft:chest Items[0].tag.CustomModelData
execute if score Read prog matches 3 run data modify storage minecraft:chest Read[-1].IfType set from storage minecraft:chest Items[0].tag.IfType
execute if score Read prog matches 3 run data modify storage minecraft:chest Read[-1].FunctionType set from storage minecraft:chest Items[0].tag.FunctionType
execute if score Read prog matches 3 run data modify storage minecraft:chest Read[-1].DeplacementType set from storage minecraft:chest Items[0].tag.DeplacementType
execute if score Read prog matches 3 run data modify storage minecraft:chest Read[-1].BrasType set from storage minecraft:chest Items[0].tag.BrasType
execute if score Read prog matches 3 run data remove storage minecraft:chest Items[0]

execute if score Read prog matches 3 unless data storage minecraft:chest Items[0] if score logs prog matches 1 run tellraw @a[tag=player] ["",{"text":"\nDÉBUT LECTURE","bold":true,"color":"dark_green"}]
#execute if score Read prog matches 3 unless data storage minecraft:chest Items[0] if score logs prog matches 1 run tellraw @a[tag=player] ["",{"text":"Logs ","color":"gray"},{"text":"ON","color":"green"}]
#execute if score Read prog matches 3 unless data storage minecraft:chest Items[0] if score logs prog matches 0 run tellraw @a[tag=player] ["",{"text":"Logs ","color":"gray"},{"text":"OFF","color":"red"}]
execute if score Read prog matches 3 unless data storage minecraft:chest Items[0] run scoreboard players set Read prog 4


### Check if all functions are corrects
execute if score Read prog matches 4 run function scripts:prog/read/check_functions


### Read all steps
# Normal Flow
execute if score Read prog matches 5 if score LoopFlow prog matches 1 run function scripts:prog/read/flow_normal
# Loop Flow
execute if score Read prog matches 5 run function scripts:prog/read/flow_loop


### Convert item into Actions
execute if score Read prog matches 5 run function scripts:prog/read/convert_item
# Execute action on the rover
execute if score Read prog matches 5 run function scripts:prog/read/rover_actions
### Check if the function work with the objectives
execute if score Read prog matches 5 run function scripts:prog/read/check_prog
scoreboard players set Action prog 0
scoreboard players set EndIf prog 0


### Read complete
execute if score Read prog matches 5 unless data storage minecraft:chest Read[0] run scoreboard players set Read prog 6


### End Read function
execute if score Read prog matches 6.. if score logs prog matches 1 run tellraw @a[tag=player] ["",{"text":"FIN LECTURE\n","bold":true,"color":"dark_green"}]
execute if score Iteration prog matches 200.. run scoreboard players set Read prog 42
execute if score Read prog matches 42 run tellraw @a[tag=player] ["",{"text":"ERREUR : ","bold":true,"color":"dark_red"},{"text":"La limite d'itérations de la boucle à été atteinte.\nLa simulation à été arrêté !\n","bold":false,"color":"dark_red"}]
## Verified Function
execute if score Read prog matches 6.. run function scripts:prog/read/complete_prog
# Reset Score
#execute if score Read prog matches 6.. run scoreboard objectives remove complete_task
#execute if score Read prog matches 6.. run scoreboard objectives add complete_task dummy
execute if score Read prog matches 6.. run scoreboard players set Action prog 0
execute if score Read prog matches 6.. run scoreboard players set LoopFlow prog 1
execute if score Read prog matches 6.. run scoreboard players set LoopAction prog 1
execute if score Read prog matches 6.. run scoreboard players reset end_loop prog
execute if score Read prog matches 6.. run scoreboard players reset while prog
execute if score Read prog matches 6.. run scoreboard players reset Temp_Action prog
execute if score Read prog matches 6.. run scoreboard players reset Iteration prog
execute if score Read prog matches 6.. run scoreboard players reset Read prog




scoreboard players add Iteration prog 1
execute if score Read prog = Read prog run function scripts:prog/read/read_slot


# 101 -> si
# 151 -> sinon
# 153 -> sinon

# 201 -> fin IF
# 221 -> fin LOOP

# 301 -> loop

# 2012 -> break
# 2013 -> break