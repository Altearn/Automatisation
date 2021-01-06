### If condition = True
function scripts:prog/read/else
execute if score LoopFlow prog matches 1 if score IfBool prog matches 1 if score Temp_Action prog matches 151 store result score EndIf prog run data get storage minecraft:chest Read[1].Action
execute if score LoopFlow prog matches 2.. if score IfBool prog matches 1 if score Temp_Action prog matches 151 store result score EndIf prog run data get storage minecraft:chest ReadLoop[1].Action

function scripts:prog/read/else

execute if score LoopFlow prog matches 1 if score IfBool prog matches 1 if score Temp_Action prog matches 151 unless score EndIf prog matches 201 run data remove storage minecraft:chest Read[1]
execute if score LoopFlow prog matches 2.. if score IfBool prog matches 1 if score Temp_Action prog matches 151 unless score EndIf prog matches 201 run data remove storage minecraft:chest ReadLoop[1]
execute if score IfBool prog matches 1 if score Temp_Action prog matches 151 unless score EndIf prog matches 201 run function scripts:prog/read/flow_if

#execute if score LoopFlow prog matches 1 if score IfBool prog matches 1 if score Temp_Action prog matches 151 if score EndIf prog matches 201 run data remove storage minecraft:chest Read[1]
#execute if score LoopFlow prog matches 2.. if score IfBool prog matches 1 if score Temp_Action prog matches 151 if score EndIf prog matches 201 run data remove storage minecraft:chest ReadLoop[1]
#execute if score IfBool prog matches 1 if score EndIf prog matches 201 if score logs prog matches 1 run tellraw @a[tag=player] ["",{"text":"FIN SI 1","bold":false,"color":"gold"}]
#execute if score IfBool prog matches 1 if score Temp_Action prog matches 151 if score EndIf prog matches 201 if score logs prog matches 1 if score LoopFlow prog matches 1 run data remove storage minecraft:chest Read[0]
#execute if score IfBool prog matches 1 if score Temp_Action prog matches 151 if score EndIf prog matches 201 if score logs prog matches 1 if score LoopFlow prog matches 2.. run data remove storage minecraft:chest ReadLoop[0]
#execute if score IfBool prog matches 1 if score Temp_Action prog matches 151 if score EndIf prog matches 201 run scoreboard players reset IfBool prog
execute if score IfBool prog matches 1 if score Temp_Action prog matches 151 if score EndIf prog matches 201 run scoreboard players set Else complete_task 0
execute if score IfBool prog matches 1 if score Temp_Action prog matches 151 if score EndIf prog matches 201 run scoreboard players reset IfBool prog



### If condition = False
function scripts:prog/read/else
execute if score LoopFlow prog matches 1 if score IfBool prog matches 0 store result score EndIf prog run data get storage minecraft:chest Read[1].Action
execute if score LoopFlow prog matches 2.. if score IfBool prog matches 0 store result score EndIf prog run data get storage minecraft:chest ReadLoop[1].Action

function scripts:prog/read/else

execute if score IfBool prog matches 0 if score EndIf prog matches 201 run scoreboard players set EndIf prog 151
execute if score LoopFlow prog matches 1 if score IfBool prog matches 0 unless score EndIf prog matches 151 run data remove storage minecraft:chest Read[1]
execute if score LoopFlow prog matches 2.. if score IfBool prog matches 0 unless score EndIf prog matches 151 run data remove storage minecraft:chest ReadLoop[1]
execute if score IfBool prog matches 0 unless score EndIf prog matches 151 run function scripts:prog/read/flow_if

#execute if score LoopFlow prog matches 1 if score IfBool prog matches 0 if score EndIf prog matches 151 run data remove storage minecraft:chest Read[1]
#execute if score LoopFlow prog matches 2.. if score IfBool prog matches 0 if score EndIf prog matches 151 run data remove storage minecraft:chest ReadLoop[1]
#execute if score IfBool prog matches 0 if score EndIf prog matches 151 if score logs prog matches 1 run tellraw @a[tag=player] ["",{"text":"FIN SI 0","bold":false,"color":"gold"}]
execute if score IfBool prog matches 0 if score EndIf prog matches 151 run scoreboard players set Else complete_task 1
execute if score IfBool prog matches 0 if score EndIf prog matches 151 run scoreboard players reset IfBool prog