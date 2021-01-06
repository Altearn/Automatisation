# Normal Flow
execute if score LoopFlow prog matches 1 store result storage minecraft:chest Read[0].Count byte 1 run scoreboard players get LoopAction prog
execute if score LoopFlow prog matches 1 store result storage minecraft:chest Read[0].Count byte 1 run scoreboard players remove LoopAction prog 1

# Loop Flow
execute if score LoopFlow prog matches 2.. store result storage minecraft:chest ReadLoop[0].Count byte 1 run scoreboard players get LoopAction prog
execute if score LoopFlow prog matches 2.. store result storage minecraft:chest ReadLoop[0].Count byte 1 run scoreboard players remove LoopAction prog 1
