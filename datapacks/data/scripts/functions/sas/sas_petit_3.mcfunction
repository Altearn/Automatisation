execute if score petit_sas_timer general matches 80.. run scoreboard players set petit_sas_timer general 0

scoreboard players add petit_sas_timer general 1

execute if score petit_sas_timer general matches 1 run execute if block ~ ~ ~ minecraft:crimson_button[facing=west] run setblock ~ ~ ~ minecraft:crimson_button[powered=false,facing=west]
execute if score petit_sas_timer general matches 1 run execute if block ~ ~ ~ minecraft:crimson_button[facing=east] run setblock ~ ~ ~ minecraft:crimson_button[powered=false,facing=east]
execute if score petit_sas_timer general matches 1 run execute if block ~ ~ ~ minecraft:crimson_button[facing=south] run setblock ~ ~ ~ minecraft:crimson_button[powered=false,facing=south]
execute if score petit_sas_timer general matches 1 run execute if block ~ ~ ~ minecraft:crimson_button[facing=north] run setblock ~ ~ ~ minecraft:crimson_button[powered=false,facing=north]

execute if score petit_sas_timer general matches 1 positioned 70 4 12 run playsound minecraft:block.piston.contract master @a ~ ~ ~ 1.0 1.0 1.0
execute if score petit_sas_timer general matches 1 run fill 70 4 12 71 5 12 minecraft:black_stained_glass_pane
execute if score petit_sas_timer general matches 15..65 run particle minecraft:cloud 71.0 5.00 15.0 1 1 0.5 0.01 2 normal @a
execute if score petit_sas_timer general matches 15 positioned 71.0 4 15.0 run playsound minecraft:block.lava.extinguish master @a ~ ~ ~ 1.0 0.1 1.0
execute if score petit_sas_timer general matches 80 run fill 73 4 14 73 5 14 minecraft:air
execute if score petit_sas_timer general matches 80 run scoreboard players set petit_sas general 0
execute if score petit_sas_timer general matches 80 positioned 73 4 14 run playsound minecraft:block.piston.extend master @a ~ ~ ~ 1.0 1.0 1.0

execute if score petit_sas_timer general matches ..79 run schedule function scripts:sas/sas_petit_3 1t