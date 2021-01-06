# O  = rover → <back_wheel><rover_body><front_wheel>
# -  = stable
# ↓  = -1 slab
# ↑  = +1 slab
# ↑↑ = +1 block


# ↑↑O↑↑
execute if score lb_wheel Animations matches 2 if score lf_wheel Animations matches 2 run scoreboard players set body Animations 0
execute if score rb_wheel Animations matches 2 if score rf_wheel Animations matches 2 run scoreboard players set body Animations 0
# ↑↑O↑
execute if score lb_wheel Animations matches 2 if score lf_wheel Animations matches 1 run scoreboard players set body Animations -1
execute if score rb_wheel Animations matches 2 if score rf_wheel Animations matches 1 run scoreboard players set body Animations -1
# ↑O↑↑
execute if score lb_wheel Animations matches 1 if score lf_wheel Animations matches 2 run scoreboard players set body Animations 1
execute if score rb_wheel Animations matches 1 if score rf_wheel Animations matches 2 run scoreboard players set body Animations 1
# -O↑↑
execute if score lb_wheel Animations matches 0 if score lf_wheel Animations matches 2 run scoreboard players set body Animations 2
execute if score rb_wheel Animations matches 0 if score rf_wheel Animations matches 2 run scoreboard players set body Animations 2
# ↑↑O-
execute if score lb_wheel Animations matches 2 if score lf_wheel Animations matches 0 run scoreboard players set body Animations -2
execute if score rb_wheel Animations matches 2 if score rf_wheel Animations matches 0 run scoreboard players set body Animations -2
# ↑O↑
execute if score lb_wheel Animations matches 1 if score lf_wheel Animations matches 1 run scoreboard players set body Animations 0
execute if score rb_wheel Animations matches 1 if score rf_wheel Animations matches 1 run scoreboard players set body Animations 0
# -O↑
execute if score lb_wheel Animations matches 0 if score lf_wheel Animations matches 1 run scoreboard players set body Animations 1
execute if score rb_wheel Animations matches 0 if score rf_wheel Animations matches 1 run scoreboard players set body Animations 1
# ↑O-
execute if score lb_wheel Animations matches 1 if score lf_wheel Animations matches 0 run scoreboard players set body Animations -1
execute if score rb_wheel Animations matches 1 if score rf_wheel Animations matches 0 run scoreboard players set body Animations -1
# -O-
execute if score lb_wheel Animations matches 0 if score lf_wheel Animations matches 0 run scoreboard players set body Animations 0
execute if score rb_wheel Animations matches 0 if score rf_wheel Animations matches 0 run scoreboard players set body Animations 0
# -O↓
execute if score lb_wheel Animations matches 0 if score lf_wheel Animations matches -1 run scoreboard players set body Animations 0
execute if score rb_wheel Animations matches 0 if score rf_wheel Animations matches -1 run scoreboard players set body Animations 0
# ↓O-
execute if score lb_wheel Animations matches -1 if score lf_wheel Animations matches 0 run scoreboard players set body Animations 0
execute if score rb_wheel Animations matches -1 if score rf_wheel Animations matches 0 run scoreboard players set body Animations 0
# ↓O↓
execute if score lb_wheel Animations matches -1 if score lf_wheel Animations matches -1 run scoreboard players set body Animations 0
execute if score rb_wheel Animations matches -1 if score rf_wheel Animations matches -1 run scoreboard players set body Animations 0
# ↑O↓
execute if score lb_wheel Animations matches 1 if score lf_wheel Animations matches -1 run scoreboard players set body Animations -1
execute if score rb_wheel Animations matches 1 if score rf_wheel Animations matches -1 run scoreboard players set body Animations -1
# ↑↑O↓
execute if score lb_wheel Animations matches 2 if score lf_wheel Animations matches -1 run scoreboard players set body Animations -2
execute if score rb_wheel Animations matches 2 if score rf_wheel Animations matches -1 run scoreboard players set body Animations -2
# ↓O↑
execute if score lb_wheel Animations matches -1 if score lf_wheel Animations matches 1 run scoreboard players set body Animations 1
execute if score rb_wheel Animations matches -1 if score rf_wheel Animations matches 1 run scoreboard players set body Animations 1
# ↓O↑↑
execute if score lb_wheel Animations matches -1 if score lf_wheel Animations matches 2 run scoreboard players set body Animations 2
execute if score rb_wheel Animations matches -1 if score rf_wheel Animations matches 2 run scoreboard players set body Animations 2



# Pose
execute as @e[tag=rover,tag=body] if score body Animations matches -2 run data merge entity @s {Pose:{Head:[25f,0f,0f]}}
execute as @e[tag=rover,tag=body] if score body Animations matches -1 run data merge entity @s {Pose:{Head:[12.5f,0f,0f]}}
execute as @e[tag=rover,tag=body] if score body Animations matches 0 run data merge entity @s {Pose:{Head:[0f,0f,0f]}}
execute as @e[tag=rover,tag=body] if score body Animations matches 1 run data merge entity @s {Pose:{Head:[-12.5f,0f,0f]}}
execute as @e[tag=rover,tag=body] if score body Animations matches 2 run data merge entity @s {Pose:{Head:[-25f,0f,0f]}}
