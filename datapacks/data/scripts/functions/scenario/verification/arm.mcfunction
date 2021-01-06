execute if score timer_temp general matches 3.. run scoreboard players set timer_temp general 0

scoreboard players add timer_temp general 1

execute if score timer_temp general matches 1 run data merge block 83 7 22 {Text1:'[{"text":"","color":"#FFFFFF"}]'}
execute if score timer_temp general matches 1 run data merge block 83 7 21 {Text3:'[{"text":"","color":"#FFFFFF"}]',Text4:'[{"text":"\\uEF41","color":"#FFFFFF"}]'}
execute if score timer_temp general matches 1 run data merge block 83 7 19 {Text4:'[{"text":"\\uEF42","color":"#FFFFFF"}]'}
execute if score timer_temp general matches 1 run playsound minecraft:block.note_block.bit master @a[tag=player] 83 7 19 1 2
execute if score timer_temp general matches 2 run data merge block 83 7 19 {Text4:'[{"text":"\\uEF43","color":"#FFFFFF"}]'}
execute if score timer_temp general matches 3 run data merge block 83 7 19 {Text4:'[{"text":"\\uEF44","color":"#FFFFFF"}]'}

execute if score timer_temp general matches 3 run data merge block 83 7 21 {Text3:'[{"text":"","color":"#FFFFFF","clickEvent":{"action":"run_command","value":"/execute if score arm general matches ..2 run function scripts:scenario/verification/arm"}}]',Text4:'[{"text":"\\uEF45","color":"#FFFFFF","clickEvent":{"action":"run_command","value":"/execute if score arm general matches 3 run scoreboard players set timer story 2"}}]'}

execute if score timer_temp general matches 3 run data merge block 83 7 22 {Text1:'[{"text":"\\uEF46","color":"#FFFFFF","clickEvent":{"action":"run_command","value":"/playsound minecraft:block.note_block.didgeridoo master @a"}}]'}

execute if score timer_temp general matches 3 run playsound minecraft:block.note_block.didgeridoo master @a[tag=player] 83 7 19 1 1

execute if score timer_temp general matches ..2 run schedule function scripts:scenario/verification/arm 1s