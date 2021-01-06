execute as @e[tag=rover,tag=wheel,tag=front,tag=right] run data merge entity @s {HandItems:[{id:"iron_ingot",Count:1,tag:{CustomModelData:9}},{}]}
execute as @e[tag=rover,tag=wheel,tag=mid,tag=right] run data merge entity @s {HandItems:[{id:"iron_ingot",Count:1,tag:{CustomModelData:10}},{}]}
execute as @e[tag=rover,tag=wheel,tag=back,tag=right] run data merge entity @s {HandItems:[{id:"iron_ingot",Count:1,tag:{CustomModelData:11}},{}]}

execute as @e[tag=rover,tag=wheel,tag=front,tag=left] run data merge entity @s {HandItems:[{},{id:"iron_ingot",Count:1,tag:{CustomModelData:12}}]}
execute as @e[tag=rover,tag=wheel,tag=mid,tag=left] run data merge entity @s {HandItems:[{},{id:"iron_ingot",Count:1,tag:{CustomModelData:13}}]}
execute as @e[tag=rover,tag=wheel,tag=back,tag=left] run data merge entity @s {HandItems:[{},{id:"iron_ingot",Count:1,tag:{CustomModelData:14}}]}