#bureau
execute if block 75 4 16 minecraft:crimson_button[powered=true] if score petit_sas general matches 0 positioned 75 4 16 run setblock 75 4 16 minecraft:crimson_button[powered=false,facing=east]
execute if block 75 4 16 minecraft:crimson_button[powered=true] if score petit_sas general matches 10 positioned 75 4 16 run function scripts:sas/sas_petit_1
execute if block 75 4 16 minecraft:crimson_button[powered=true] if score petit_sas general matches 20 positioned 75 4 16 run function scripts:sas/sas_petit_3

#sas vers bureau
execute if block 72 5 16 minecraft:crimson_button[powered=true] if score petit_sas general matches 0 positioned 72 5 16 run setblock 72 5 16 minecraft:crimson_button[powered=false,facing=west]
execute if block 72 5 16 minecraft:crimson_button[powered=true] if score petit_sas general matches 10 positioned 72 5 16 run function scripts:sas/sas_petit_1
execute if block 72 5 16 minecraft:crimson_button[powered=true] if score petit_sas general matches 20 positioned 72 5 16 run function scripts:sas/sas_petit_3

#sas vers labo
execute if block 69 5 13 minecraft:crimson_button[powered=true] if score petit_sas general matches 0 positioned 69 5 13 run function scripts:sas/sas_petit_4
execute if block 69 5 13 minecraft:crimson_button[powered=true] if score petit_sas general matches 10 positioned 69 5 13 run function scripts:sas/sas_petit_2
execute if block 69 5 13 minecraft:crimson_button[powered=true] if score petit_sas general matches 20 positioned 69 5 13 run setblock 69 5 13 minecraft:crimson_button[powered=false,facing=south]

#labo
execute if block 72 4 10 minecraft:crimson_button[powered=true] if score petit_sas general matches 0 positioned 72 4 10 run function scripts:sas/sas_petit_4
execute if block 72 4 10 minecraft:crimson_button[powered=true] if score petit_sas general matches 10 positioned 72 4 10 run function scripts:sas/sas_petit_2
execute if block 72 4 10 minecraft:crimson_button[powered=true] if score petit_sas general matches 20 positioned 72 4 10 run setblock 72 4 10 minecraft:crimson_button[powered=false,facing=north]