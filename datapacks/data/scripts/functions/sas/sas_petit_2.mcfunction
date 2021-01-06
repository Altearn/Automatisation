execute if block ~ ~ ~ minecraft:crimson_button[facing=west] run setblock ~ ~ ~ minecraft:crimson_button[powered=false,facing=west]
execute if block ~ ~ ~ minecraft:crimson_button[facing=east] run setblock ~ ~ ~ minecraft:crimson_button[powered=false,facing=east]
execute if block ~ ~ ~ minecraft:crimson_button[facing=south] run setblock ~ ~ ~ minecraft:crimson_button[powered=false,facing=south]
execute if block ~ ~ ~ minecraft:crimson_button[facing=north] run setblock ~ ~ ~ minecraft:crimson_button[powered=false,facing=north]
fill 71 4 12 71 5 12 minecraft:air
scoreboard players set petit_sas general 20
execute positioned 71 4 12 run playsound minecraft:block.piston.extend master @a ~ ~ ~ 1.0 1.0 1.0