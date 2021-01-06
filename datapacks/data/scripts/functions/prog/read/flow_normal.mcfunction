## Normal Flow
execute store result score Temp_Action prog run data get storage minecraft:chest Read[0].Action
execute store result score FunctionType prog run data get storage minecraft:chest Read[0].FunctionType
execute store result score DeplacementType prog run data get storage minecraft:chest Read[0].DeplacementType
execute store result score BrasType prog run data get storage minecraft:chest Read[0].BrasType
# check loop
	execute if score Temp_Action prog matches 301 store result score LoopFlow prog run data get storage minecraft:chest Read[0].Count
	execute if score Temp_Action prog matches 301 if score LoopFlow prog matches 1 run scoreboard players set while prog 1
	execute if score Temp_Action prog matches 301 if score while prog matches 1 run scoreboard players set LoopFlow prog 2

	execute unless score Temp_Action prog matches 301 store result score LoopAction prog run data get storage minecraft:chest Read[0].Count
# check if
	execute if score Temp_Action prog matches 101 store result score IfType prog run data get storage minecraft:chest Read[0].IfType
	execute if score Temp_Action prog matches 101 run function scripts:prog/read/if_conditions
	execute if score IfBool prog = IfBool prog run function scripts:prog/read/flow_if
execute if score LoopFlow prog matches 1 if score LoopAction prog matches ..1 run data remove storage minecraft:chest Read[0]

# Loop Actions
execute if score LoopAction prog matches 2.. run function scripts:prog/read/loop_actions
