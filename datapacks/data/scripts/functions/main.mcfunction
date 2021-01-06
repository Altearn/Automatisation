function scripts:rover/animations/wheels
function scripts:scenario/dialog
function scripts:sas/sas_petit

kill @e[type=item,nbt={Item:{id:"minecraft:gold_ingot"}}]
kill @e[type=item,nbt={Item:{id:"minecraft:emerald"}}]

execute as @a[tag=player] if score @s loom matches 1.. run setblock 10 4 18 minecraft:stripped_birch_wood
execute as @a[tag=player] if score @s loom matches 1.. run title @s actionbar {"text":"OH le joli badge, je vais le garder ça pourrait être utile.","color":"aqua"}
execute as @a[tag=player] if score @s loom matches 1.. run scoreboard players set @a[tag=player] loom -100

# Dev Only
execute as @a[tag=!player] if data entity @s SelectedItem.tag.Record1 run function scripts:scenario/animations/record_motion
execute as @a[tag=!player] if data entity @s SelectedItem.tag.Record2 run function scripts:scenario/animations/record_loop_motion
