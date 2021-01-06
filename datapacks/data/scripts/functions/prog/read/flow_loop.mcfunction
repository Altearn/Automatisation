## Loop Flow
# Copy actions in loop flow
execute if score LoopFlow prog matches 2.. unless score end_loop prog matches 221 unless data storage minecraft:chest Loop[0] if score logs prog matches 1 run tellraw @a[tag=player] ["",{"text":"DÉBUT BOUCLE","bold":false,"color":"light_purple"}]
execute if score LoopFlow prog matches 2.. unless score end_loop prog matches 221 unless data storage minecraft:chest Loop[0] run scoreboard players add LoopFlow prog 1
execute if score LoopFlow prog matches 2.. unless score end_loop prog matches 221 run data modify storage minecraft:chest Loop insert -1 value {}
execute if score LoopFlow prog matches 2.. unless score end_loop prog matches 221 run data modify storage minecraft:chest Loop[-1] set from storage minecraft:chest Read[1]
execute if score LoopFlow prog matches 2.. unless score end_loop prog matches 221 run data remove storage minecraft:chest Read[1]
execute if score LoopFlow prog matches 2.. unless score end_loop prog matches 221 store result score end_loop prog run data get storage minecraft:chest Loop[-1].Action
# Read actions in loop flow
execute if score LoopFlow prog matches 2.. if score LoopAction prog matches ..1 if score end_loop prog matches 221 unless data storage minecraft:chest ReadLoop[0] if score logs prog matches 1 run tellraw @a[tag=player] ["",{"text":"---","bold":false,"color":"light_purple"}]
execute if score LoopFlow prog matches 2.. if score LoopAction prog matches ..1 if score end_loop prog matches 221 unless data storage minecraft:chest ReadLoop[0] run data modify storage minecraft:chest ReadLoop set from storage minecraft:chest Loop
execute if score LoopFlow prog matches 2.. if score LoopAction prog matches ..1 if score end_loop prog matches 221 store result score Temp_Action prog run data get storage minecraft:chest ReadLoop[0].Action
execute if score LoopFlow prog matches 2.. if score LoopAction prog matches ..1 if score end_loop prog matches 221 store result score IfType prog run data get storage minecraft:chest ReadLoop[0].IfType
execute if score LoopFlow prog matches 2.. if score LoopAction prog matches ..1 if score end_loop prog matches 221 store result score FunctionType prog run data get storage minecraft:chest ReadLoop[0].FunctionType
execute if score LoopFlow prog matches 2.. if score LoopAction prog matches ..1 if score end_loop prog matches 221 store result score DeplacementType prog run data get storage minecraft:chest ReadLoop[0].DeplacementType
execute if score LoopFlow prog matches 2.. if score LoopAction prog matches ..1 if score end_loop prog matches 221 store result score BrasType prog run data get storage minecraft:chest ReadLoop[0].BrasType
execute if score LoopFlow prog matches 2.. if score LoopAction prog matches ..1 if score end_loop prog matches 221 store result score LoopAction prog run data get storage minecraft:chest ReadLoop[0].Count

# check if
	execute if score LoopFlow prog matches 2.. if score Temp_Action prog matches 101 store result score IfType prog run data get storage minecraft:chest ReadLoop[0].IfType
	execute if score LoopFlow prog matches 2.. if score Temp_Action prog matches 101 run function scripts:prog/read/if_conditions
	execute if score LoopFlow prog matches 2.. if score IfBool prog = IfBool prog run function scripts:prog/read/flow_if

execute if score LoopFlow prog matches 2.. if score LoopAction prog matches ..1 if score end_loop prog matches 221 run data remove storage minecraft:chest ReadLoop[0]
execute if score LoopFlow prog matches 2.. if score LoopAction prog matches ..1 if score end_loop prog matches 221 unless data storage minecraft:chest ReadLoop[0] unless score while prog matches 1 run scoreboard players remove LoopFlow prog 1
# Loop Actions
execute if score end_loop prog matches 221 if score LoopAction prog matches 2.. run function scripts:prog/read/loop_actions


# break
	execute if score Temp_Action prog matches 2013 run scoreboard players set Temp_Action prog 2012
	execute if score Temp_Action prog matches 2012 run scoreboard players set while prog 0
	execute if score Temp_Action prog matches 2012 run scoreboard players set LoopFlow prog 2


## End Loop
execute if score LoopFlow prog matches 1 if score end_loop prog matches 221 run data remove storage minecraft:chest Read[0]
execute if score LoopFlow prog matches 1 if score end_loop prog matches 221 run data merge storage minecraft:chest {Loop:[]}
execute if score LoopFlow prog matches 1 if score end_loop prog matches 221 run scoreboard players reset Flow_Loop prog
execute if score LoopFlow prog matches 1 if score end_loop prog matches 221 unless score Temp_Action prog matches 2012 if score logs prog matches 1 run tellraw @a[tag=player] ["",{"text":"FIN BOUCLE","bold":false,"color":"light_purple"}]
execute if score LoopFlow prog matches 1 if score end_loop prog matches 221 if score Temp_Action prog matches 2012 if score logs prog matches 1 run tellraw @a[tag=player] ["",{"text":"SORTIE BOUCLE","bold":false,"color":"light_purple"}]
execute if score LoopFlow prog matches 1 if score end_loop prog matches 221 run scoreboard players reset end_loop prog
