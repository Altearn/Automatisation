# DEBUG
#scoreboard players set dev_condition prog 1



### Sol
execute if score IfType prog matches 1..2 unless score Sol complete_task = Sol complete_task store result score Sol complete_task if predicate scripts:random
## Sol dur        IfType:1
execute if score IfType prog matches 1 if score logs prog matches 1 run tellraw @a[tag=player] ["",{"text":"SI : SOL DUR","bold":false,"color":"gold"}]
execute if score IfType prog matches 1 if score Sol complete_task matches 1 run scoreboard players set IfBool prog 1
execute if score IfType prog matches 1 if score Sol complete_task matches 0 run scoreboard players set IfBool prog 0
## Sol mou        IfType:2
execute if score IfType prog matches 2 if score logs prog matches 1 run tellraw @a[tag=player] ["",{"text":"SI : SOL MOU","bold":false,"color":"gold"}]
execute if score IfType prog matches 2 if score Sol complete_task matches 1 run scoreboard players set IfBool prog 0
execute if score IfType prog matches 2 if score Sol complete_task matches 0 run scoreboard players set IfBool prog 1

execute if score LoopFlow prog matches 2.. if score LoopAction prog matches ..1 if score end_loop prog matches 221 run scoreboard players reset Sol complete_task


### Rover arrivé    IfType:3
execute if score IfType prog matches 3 if score logs prog matches 1 run tellraw @a[tag=player] ["",{"text":"SI : ROVER ARRIVÉ A DESTINATION","bold":false,"color":"gold"}]
execute if score IfType prog matches 3 if score prog_step prog matches 7..8 unless score goto_if complete_task = goto_if complete_task run scoreboard players set goto_if complete_task 0
execute if score IfType prog matches 3 unless score prog_step prog matches 7..8 unless score goto_if complete_task = goto_if complete_task run scoreboard players set goto_if complete_task 5
# arrivé
#execute if score IfType prog matches 3 if score goto_if complete_task matches 5.. run scoreboard players set IfBool prog 1
#execute if score IfType prog matches 3 if score goto_if complete_task matches 5.. run scoreboard players reset goto_if complete_task
# pas arrivé
#execute if score IfType prog matches 3 if score goto_if complete_task matches 0..4 run scoreboard players set IfBool prog 0
#execute if score IfType prog matches 3 if score goto_if complete_task matches 0..4 run scoreboard players add goto_if complete_task 1
execute if score IfType prog matches 3 if score Deplacement complete_task matches 1 store result score IfBool prog if predicate scripts:random
execute if score IfType prog matches 3 unless score Deplacement complete_task matches 1 run scoreboard players set IfBool prog 0
execute if score IfType prog matches 3 if score Deplacement complete_task matches 1 if score IfBool prog matches 1 run scoreboard players reset Deplacement complete_task


### Bras plié      IfType:4
#execute if score IfType prog matches 4 if score logs prog matches 1 run tellraw @a[tag=player] ["",{"text":"SI : BRAS PLIÉ","bold":false,"color":"gold"}]
#execute if score IfType prog matches 4 if score dev_condition prog matches 1 run scoreboard players set IfBool prog 1
#execute if score IfType prog matches 4 if score dev_condition prog matches 0 run scoreboard players set IfBool prog 0


### Obstacle       IfType:5
execute if score IfType prog matches 5 if score logs prog matches 1 run tellraw @a[tag=player] ["",{"text":"SI : OBSTACLE","bold":false,"color":"gold"}]
execute if score IfType prog matches 5 if score prog_step prog matches 7 unless score obstacle complete_task = obstacle complete_task run scoreboard players set obstacle complete_task 0
execute if score IfType prog matches 5 unless score prog_step prog matches 7 unless score obstacle complete_task = obstacle complete_task run scoreboard players set obstacle complete_task 4
# Contourner
execute if score IfType prog matches 5 if score obstacle complete_task matches 0..3 run scoreboard players set IfBool prog 1
execute if score IfType prog matches 5 if score obstacle complete_task matches 0..3 run scoreboard players add obstacle complete_task 1
# Avancer
execute if score IfType prog matches 5 if score obstacle complete_task matches 4.. run scoreboard players set IfBool prog 0


### Foreuse à finis       IfType:6
execute if score IfType prog matches 6 if score logs prog matches 1 run tellraw @a[tag=player] ["",{"text":"SI : FOREUSE A FINIS","bold":false,"color":"gold"}]
# Forage
execute if score IfType prog matches 6 if score prog_step prog matches 6 run scoreboard players add Forage complete_task 1
# If not forage end
execute if score IfType prog matches 6 unless score Forage complete_task matches 10.. run scoreboard players set IfBool prog 0
# If forage end
execute if score IfType prog matches 6 if score Forage complete_task matches 10.. run scoreboard players set IfBool prog 1
execute if score IfType prog matches 6 if score Forage complete_task matches 10.. run scoreboard players reset Forage complete_task



### Result Condition
execute if score IfType prog matches 0 run scoreboard players reset IfBool prog
# If Condition = TRUE
execute if score IfBool prog matches 1 if score logs prog matches 1 run tellraw @a[tag=player] ["",{"text":"→ ","color":"gold"},{"text":"TRUE","color":"green"}]
# If Condition = FALSE
execute if score IfBool prog matches 0 if score logs prog matches 1 run tellraw @a[tag=player] ["",{"text":"→ ","color":"gold"},{"text":"FALSE","color":"red"}]