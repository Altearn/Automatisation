### STEP 1 : Check all items for functions
## Clone All read items
execute unless data storage minecraft:chest Check[0] run scoreboard players set check_break prog 0
execute unless data storage minecraft:chest Check[0] run scoreboard players set check_break_deplacement prog 0
execute unless data storage minecraft:chest Check[0] run data modify storage minecraft:chest Check set from storage minecraft:chest Read

execute store result score Temp_Action prog run data get storage minecraft:chest Check[0].Action
execute store result score LoopAction prog run data get storage minecraft:chest Check[0].Count
execute store result score IfType prog run data get storage minecraft:chest Check[0].IfType


# Check if there is a LOOP function
execute if score Temp_Action prog matches 301 run scoreboard players add check_loop prog 1
execute if score Temp_Action prog matches 301 run scoreboard players operation LoopFlow prog = LoopAction prog
execute if score Temp_Action prog matches 221 unless score check_else prog matches -1 run scoreboard players remove check_loop prog 1

# Check if there is an IF function
execute if score Temp_Action prog matches 101 run scoreboard players add check_if prog 1
execute if score Temp_Action prog matches 201 run scoreboard players remove check_if prog 1

# Check if there is multiple ELSE in IF function
execute if score Temp_Action prog matches 151 unless score check_loop prog matches 1.. run scoreboard players add check_else prog 1
execute if score Temp_Action prog matches 153 unless score check_loop prog matches 1.. run scoreboard players add check_else prog 1
execute if score Temp_Action prog matches 201 unless score check_loop prog matches 1.. if score check_else prog matches 1.. run scoreboard players remove check_else prog 1

# Check if there is infinite loop
execute if score Temp_Action prog matches 2012 run scoreboard players add check_break prog 1
execute if score Temp_Action prog matches 2013 run scoreboard players add check_break prog 1
execute if score Temp_Action prog matches 221 if score check_break prog matches 0 if score LoopFlow prog matches 1 if score check_loop prog matches 0 run scoreboard players set check_break prog -100
execute if score Temp_Action prog matches 221 if score check_break prog matches 1.. if score LoopFlow prog matches 1 if score check_loop prog matches 0 run scoreboard players set check_break prog 0

execute if score Temp_Action prog matches 101 if score IfType prog matches 3 if score check_loop prog matches 1 if score check_break_deplacement prog matches 0 run scoreboard players set check_break_deplacement prog 1
execute if score Temp_Action prog matches 11..12 if score check_loop prog matches 1 if score check_break_deplacement prog matches 0.. run scoreboard players set check_break_deplacement prog -1
execute if score Temp_Action prog matches 1011..1012 if score check_loop prog matches 1 if score check_break_deplacement prog matches 0.. run scoreboard players set check_break_deplacement prog -1
#execute if score Temp_Action prog matches 201 if score check_break prog matches 0..1 if score LoopFlow prog matches 1 if score check_loop prog matches 1.. run scoreboard players set check_break prog -200
execute if score check_loop prog matches 0 if score check_break_deplacement prog matches -1 run scoreboard players set check_break_deplacement prog 0

data remove storage minecraft:chest Check[0]

execute if data storage minecraft:chest Check[0] run schedule function scripts:prog/read/check_functions 1t replace



### STEP 2 : Check if there is a function who don't have an end
# Error no end loop
execute unless data storage minecraft:chest Check[0] if score check_loop prog = check_loop prog unless score check_loop prog matches 0 run scoreboard players set Read prog 7
execute unless data storage minecraft:chest Check[0] if score Read prog matches 7 run tellraw @a[tag=player] ["",{"text":"ERREUR : ","bold":true,"color":"dark_red"},{"text":"Une boucle n'a pas de bloc de fin !","bold":false,"color":"dark_red"}]

# Error no end if
execute unless data storage minecraft:chest Check[0] if score check_if prog = check_if prog unless score check_if prog matches 0 run scoreboard players set Read prog 8
execute unless data storage minecraft:chest Check[0] if score Read prog matches 8 run tellraw @a[tag=player] ["",{"text":"ERREUR : ","bold":true,"color":"dark_red"},{"text":"Une fonction SI n'a pas de bloc de fin !","bold":false,"color":"dark_red"}]

# Error the end loop are after else in if function
execute unless data storage minecraft:chest Check[0] if score check_else prog = check_else prog if score check_else prog matches 2.. run scoreboard players set Read prog 10
execute unless data storage minecraft:chest Check[0] if score Read prog matches 10 run tellraw @a[tag=player] ["",{"text":"ERREUR : ","bold":true,"color":"dark_red"},{"text":"Il y a plusieur SINON dans une fonction SI !","bold":false,"color":"dark_red"}]

# Error infinite loop
execute unless data storage minecraft:chest Check[0] if score check_break prog = check_break prog if score check_break prog matches -110..-90 run scoreboard players set Read prog 11
execute unless data storage minecraft:chest Check[0] if score Read prog matches 11 run tellraw @a[tag=player] ["",{"text":"ERREUR : ","bold":true,"color":"dark_red"},{"text":"Boucle infini détecté !","bold":false,"color":"dark_red"}]
execute unless data storage minecraft:chest Check[0] if score check_break_deplacement prog matches 1 run scoreboard players set Read prog 12
execute unless data storage minecraft:chest Check[0] if score Read prog matches 12 run tellraw @a[tag=player] ["",{"text":"ERREUR : ","bold":true,"color":"dark_red"},{"text":"La condition \"Si Rover arrivé à Destination\" ne peut pas être remplis !\n→ Boucle infinis.","bold":false,"color":"dark_red"}]
#execute unless data storage minecraft:chest Check[0] if score check_break prog = check_break prog if score check_break prog matches -210..-190 run scoreboard players set Read prog 12
#execute unless data storage minecraft:chest Check[0] if score Read prog matches 12 run tellraw @a[tag=player] ["",{"text":"ERREUR : ","bold":true,"color":"dark_red"},{"text":"Boucle infini détecté dans une condition du SI !","bold":false,"color":"dark_red"}]

# No Error
execute unless data storage minecraft:chest Check[0] if score check_if prog matches 0 run scoreboard players reset check_if prog
execute unless data storage minecraft:chest Check[0] if score check_else prog matches 0 run scoreboard players reset check_else prog
execute unless data storage minecraft:chest Check[0] if score check_loop prog matches 0 run scoreboard players reset check_loop prog
execute unless data storage minecraft:chest Check[0] if score check_break prog matches 0.. run scoreboard players reset check_break prog
execute unless data storage minecraft:chest Check[0] if score check_break_deplacement prog matches ..0 run scoreboard players reset check_break_deplacement prog
execute unless data storage minecraft:chest Check[0] unless score check_break prog = check_break prog unless score check_break_deplacement prog = check_break_deplacement prog unless score check_if prog = check_if prog unless score check_else prog = check_else prog unless score check_loop prog = check_loop prog run scoreboard players set Read prog 123
execute if score Read prog matches 123 run scoreboard players set LoopFlow prog 1
execute if score Read prog matches 123 run scoreboard players set LoopAction prog 1
execute if score Read prog matches 123 run scoreboard players reset Temp_Action prog
execute if score Read prog matches 123 run scoreboard players set Read prog 5


### Clear schedule & scores
execute unless data storage minecraft:chest Check[0] run schedule clear scripts:prog/read/check_functions
execute unless data storage minecraft:chest Check[0] run scoreboard players reset check_if prog
execute unless data storage minecraft:chest Check[0] run scoreboard players reset check_else prog
execute unless data storage minecraft:chest Check[0] run scoreboard players reset check_loop prog
execute unless data storage minecraft:chest Check[0] run scoreboard players reset check_break prog
execute unless data storage minecraft:chest Check[0] run scoreboard players reset check_break_deplacement prog