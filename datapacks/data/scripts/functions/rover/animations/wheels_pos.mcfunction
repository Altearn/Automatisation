### Back
# Left
execute as @e[tag=rover,tag=wheel,tag=left,tag=back] if score lb_wheel Animations matches -1 run data modify entity @s Pose.LeftArm[0] set value 255f
execute as @e[tag=rover,tag=wheel,tag=left,tag=back] if score lb_wheel Animations matches 0 run data modify entity @s Pose.LeftArm[0] set value 270f
execute as @e[tag=rover,tag=wheel,tag=left,tag=back] if score lb_wheel Animations matches 1 run data modify entity @s Pose.LeftArm[0] set value 293f
execute as @e[tag=rover,tag=wheel,tag=left,tag=back] if score lb_wheel Animations matches 2 run data modify entity @s Pose.LeftArm[0] set value 312f
# Right
execute as @e[tag=rover,tag=wheel,tag=right,tag=back] if score rb_wheel Animations matches -1 run data modify entity @s Pose.RightArm[0] set value 255f
execute as @e[tag=rover,tag=wheel,tag=right,tag=back] if score rb_wheel Animations matches 0 run data modify entity @s Pose.RightArm[0] set value 270f
execute as @e[tag=rover,tag=wheel,tag=right,tag=back] if score rb_wheel Animations matches 1 run data modify entity @s Pose.RightArm[0] set value 293f
execute as @e[tag=rover,tag=wheel,tag=right,tag=back] if score rb_wheel Animations matches 2 run data modify entity @s Pose.RightArm[0] set value 312f


### Front
# Left
execute as @e[tag=rover,tag=wheel,tag=left,tag=front] if score lf_wheel Animations matches -1 run data modify entity @s Pose.LeftArm[0] set value 293f
execute as @e[tag=rover,tag=wheel,tag=left,tag=front] if score lf_wheel Animations matches 0 run data modify entity @s Pose.LeftArm[0] set value 270f
execute as @e[tag=rover,tag=wheel,tag=left,tag=front] if score lf_wheel Animations matches 1 run data modify entity @s Pose.LeftArm[0] set value 250f
execute as @e[tag=rover,tag=wheel,tag=left,tag=front] if score lf_wheel Animations matches 2 run data modify entity @s Pose.LeftArm[0] set value 232f
# Right
execute as @e[tag=rover,tag=wheel,tag=right,tag=front] if score rf_wheel Animations matches -1 run data modify entity @s Pose.RightArm[0] set value 293f
execute as @e[tag=rover,tag=wheel,tag=right,tag=front] if score rf_wheel Animations matches 0 run data modify entity @s Pose.RightArm[0] set value 270f
execute as @e[tag=rover,tag=wheel,tag=right,tag=front] if score rf_wheel Animations matches 1 run data modify entity @s Pose.RightArm[0] set value 250f
execute as @e[tag=rover,tag=wheel,tag=right,tag=front] if score rf_wheel Animations matches 2 run data modify entity @s Pose.RightArm[0] set value 232f
