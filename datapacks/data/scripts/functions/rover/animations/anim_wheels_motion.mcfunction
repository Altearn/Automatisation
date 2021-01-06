execute as @e[tag=rover,tag=wheel,tag=front,tag=right] run data merge entity @s {HandItems:[{id:"iron_ingot",Count:1,tag:{CustomModelData:3}},{}]}
execute as @e[tag=rover,tag=wheel,tag=mid,tag=right] run data merge entity @s {HandItems:[{id:"iron_ingot",Count:1,tag:{CustomModelData:4}},{}]}
execute as @e[tag=rover,tag=wheel,tag=back,tag=right] run data merge entity @s {HandItems:[{id:"iron_ingot",Count:1,tag:{CustomModelData:5}},{}]}

execute as @e[tag=rover,tag=wheel,tag=front,tag=left] run data merge entity @s {HandItems:[{},{id:"iron_ingot",Count:1,tag:{CustomModelData:6}}]}
execute as @e[tag=rover,tag=wheel,tag=mid,tag=left] run data merge entity @s {HandItems:[{},{id:"iron_ingot",Count:1,tag:{CustomModelData:7}}]}
execute as @e[tag=rover,tag=wheel,tag=back,tag=left] run data merge entity @s {HandItems:[{},{id:"iron_ingot",Count:1,tag:{CustomModelData:8}}]}