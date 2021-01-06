execute if block ~ ~ ~ minecraft:crimson_button[facing=west] run setblock ~ ~ ~ minecraft:crimson_button[powered=false,facing=west]
execute if block ~ ~ ~ minecraft:crimson_button[facing=east] run setblock ~ ~ ~ minecraft:crimson_button[powered=false,facing=east]
execute if block ~ ~ ~ minecraft:crimson_button[facing=south] run setblock ~ ~ ~ minecraft:crimson_button[powered=false,facing=south]
execute if block ~ ~ ~ minecraft:crimson_button[facing=north] run setblock ~ ~ ~ minecraft:crimson_button[powered=false,facing=north]
fill 71 4 12 71 5 12 minecraft:black_stained_glass_pane
scoreboard players set petit_sas general 19
execute positioned 71 4 12 run playsound minecraft:block.piston.contract master @a ~ ~ ~ 1.0 1.0 1.0
scoreboard players add timer_petit_sas general 1