function scripts:rover/animations/wheels_pos
function scripts:rover/animations/body_pos

### Wheels
# -1 Slab
	# front
	execute as @e[tag=rover,tag=wheel,tag=left,tag=front] at @s positioned ^1 ^ ^1.45 unless block ~ ~ ~ #minecraft:slabs[type=bottom] unless block ~ ~ ~ air run scoreboard players set lf_wheel Animations 0
		execute as @e[tag=rover,tag=wheel,tag=left,tag=front] at @s positioned ^1 ^ ^1.45 if block ~ ~-0.25 ~ air run scoreboard players set lf_wheel Animations -1
		execute as @e[tag=rover,tag=wheel,tag=left,tag=front] at @s positioned ^1 ^ ^1.45 if block ~ ~-0.25 ~ #minecraft:slabs[type=bottom] run scoreboard players set lf_wheel Animations -1

	execute as @e[tag=rover,tag=wheel,tag=right,tag=front] at @s positioned ^-1 ^ ^1.45 unless block ~ ~ ~ #minecraft:slabs[type=bottom] unless block ~ ~ ~ air run scoreboard players set rf_wheel Animations 0
		execute as @e[tag=rover,tag=wheel,tag=right,tag=front] at @s positioned ^-1 ^ ^1.45 if block ~ ~-0.25 ~ air run scoreboard players set rf_wheel Animations -1
		execute as @e[tag=rover,tag=wheel,tag=right,tag=front] at @s positioned ^-1 ^ ^1.45 if block ~ ~-0.25 ~ #minecraft:slabs[type=bottom] run scoreboard players set rf_wheel Animations -1
	# back
	execute as @e[tag=rover,tag=wheel,tag=left,tag=back] at @s positioned ^1 ^ ^-1 unless block ~ ~ ~ #minecraft:slabs[type=bottom] unless block ~ ~ ~ air run scoreboard players set lb_wheel Animations 0
		#execute as @e[tag=rover,tag=wheel,tag=left,tag=back] at @s positioned ^1 ^ ^-1 if block ~ ~-0.25 ~ air run scoreboard players set lb_wheel Animations -1
		#execute as @e[tag=rover,tag=wheel,tag=left,tag=back] at @s positioned ^1 ^ ^-1 if block ~ ~-0.25 ~ #minecraft:slabs[type=bottom] run scoreboard players set lb_wheel Animations -1

	execute as @e[tag=rover,tag=wheel,tag=right,tag=back] at @s positioned ^-1 ^ ^-1 unless block ~ ~ ~ #minecraft:slabs[type=bottom] unless block ~ ~ ~ air run scoreboard players set rb_wheel Animations 0
		#execute as @e[tag=rover,tag=wheel,tag=right,tag=back] at @s positioned ^-1 ^ ^-1 if block ~ ~-0.25 ~ air run scoreboard players set rb_wheel Animations -1
		#execute as @e[tag=rover,tag=wheel,tag=right,tag=back] at @s positioned ^-1 ^ ^-1 if block ~ ~-0.25 ~ #minecraft:slabs[type=bottom] run scoreboard players set rb_wheel Animations -1
	# mid
	execute as @e[tag=rover,tag=wheel,tag=left,tag=mid] at @s positioned ^1 ^ ^ if block ~ ~-0.55 ~ #minecraft:slabs[type=bottom] positioned ^-2 ^ ^ if block ~ ~-0.55 ~ air as @e[tag=rover,tag=base] at @s run tp @s ~ ~-0.05 ~
	execute as @e[tag=rover,tag=wheel,tag=left,tag=mid] at @s positioned ^1 ^ ^ if block ~ ~-0.55 ~ #minecraft:slabs[type=bottom] positioned ^-2 ^ ^ if block ~ ~-0.55 ~ #minecraft:slabs[type=bottom] as @e[tag=rover,tag=base] at @s run tp @s ~ ~-0.05 ~

	execute as @e[tag=rover,tag=wheel,tag=right,tag=mid] at @s positioned ^-1 ^ ^ if block ~ ~-0.55 ~ #minecraft:slabs[type=bottom] positioned ^2 ^ ^ if block ~ ~-0.55 ~ air as @e[tag=rover,tag=base] at @s run tp @s ~ ~-0.05 ~
	execute as @e[tag=rover,tag=wheel,tag=right,tag=mid] at @s positioned ^-1 ^ ^ if block ~ ~-0.55 ~ #minecraft:slabs[type=bottom] positioned ^2 ^ ^ if block ~ ~-0.55 ~ #minecraft:slabs[type=bottom] as @e[tag=rover,tag=base] at @s run tp @s ~ ~-0.05 ~

# -1 Block
	# front
	execute as @e[tag=rover,tag=wheel,tag=left,tag=front] at @s positioned ^1 ^ ^1.45 if block ~ ~0.5 ~ air unless block ~ ~-0.25 ~ air unless block ~ ~-0.25 ~ #slabs[type=bottom] run scoreboard players set lf_wheel Animations 0
	execute as @e[tag=rover,tag=wheel,tag=right,tag=front] at @s positioned ^-1 ^ ^1.45 if block ~ ~0.5 ~ air unless block ~ ~-0.25 ~ air unless block ~ ~-0.25 ~ #slabs[type=bottom] run scoreboard players set rf_wheel Animations 0

	execute as @e[tag=rover,tag=wheel,tag=left,tag=front] at @s positioned ^1 ^0.5 ^1.45 if block ~ ~-0.1 ~ #slabs[type=bottom] run scoreboard players set lf_wheel Animations 0
	execute as @e[tag=rover,tag=wheel,tag=right,tag=front] at @s positioned ^-1 ^0.5 ^1.45 if block ~ ~-0.1 ~ #slabs[type=bottom] run scoreboard players set rf_wheel Animations 0
	# back
	execute as @e[tag=rover,tag=wheel,tag=left,tag=back] at @s positioned ^1 ^ ^-1 if block ~ ~0.5 ~ air unless block ~ ~-0.25 ~ air unless block ~ ~-0.25 ~ #slabs[type=bottom] run scoreboard players set lb_wheel Animations 0
	execute as @e[tag=rover,tag=wheel,tag=right,tag=back] at @s positioned ^-1 ^ ^-1 if block ~ ~0.5 ~ air unless block ~ ~-0.25 ~ air unless block ~ ~-0.25 ~ #slabs[type=bottom] run scoreboard players set rb_wheel Animations 0

	execute as @e[tag=rover,tag=wheel,tag=left,tag=back] at @s positioned ^1 ^0.5 ^-1 if block ~ ~-0.1 ~ #slabs[type=bottom] run scoreboard players set lb_wheel Animations 0
	execute as @e[tag=rover,tag=wheel,tag=right,tag=back] at @s positioned ^-1 ^0.5 ^-1 if block ~ ~-0.1 ~ #slabs[type=bottom] run scoreboard players set rb_wheel Animations 0
	# mid
	execute as @e[tag=rover,tag=wheel,tag=left,tag=mid] at @s positioned ^-1 ^ ^ if block ~ ~-0.05 ~ air positioned ^2 ^ ^ if block ~ ~-0.05 ~ air as @e[tag=rover,tag=base] at @s run tp @s ~ ~-0.05 ~

# +1 Slab
	# front
	execute as @e[tag=rover,tag=wheel,tag=left,tag=front] at @s positioned ^1 ^ ^1.5 if block ~ ~0.75 ~ #minecraft:slabs[type=bottom] run scoreboard players set lf_wheel Animations 1
	execute as @e[tag=rover,tag=wheel,tag=right,tag=front] at @s positioned ^-1 ^ ^1.5 if block ~ ~0.75 ~ #minecraft:slabs[type=bottom] run scoreboard players set rf_wheel Animations 1
	# back
	execute as @e[tag=rover,tag=wheel,tag=left,tag=back] at @s positioned ^1 ^ ^-1.45 if block ~ ~0.75 ~ #minecraft:slabs[type=bottom] run scoreboard players set lb_wheel Animations 1
	execute as @e[tag=rover,tag=wheel,tag=right,tag=back] at @s positioned ^-1 ^ ^-1.45 if block ~ ~0.75 ~ #minecraft:slabs[type=bottom] run scoreboard players set rb_wheel Animations 1
	# mid
	execute as @e[tag=rover,tag=wheel,tag=left,tag=mid] at @s positioned ^1 ^ ^ if block ~ ~0.5 ~ #minecraft:slabs[type=bottom] as @e[tag=rover,tag=base] at @s run tp @s ~ ~0.05 ~
	execute as @e[tag=rover,tag=wheel,tag=right,tag=mid] at @s positioned ^-1 ^ ^ if block ~ ~0.5 ~ #minecraft:slabs[type=bottom] as @e[tag=rover,tag=base] at @s run tp @s ~ ~0.05 ~

# +1 Block
	# front
		# on slab
		#execute as @e[tag=rover,tag=wheel,tag=left,tag=front] at @s positioned ^1 ^ ^1.45 unless block ~ ~0.25 ~ air unless block ~ ~ ~ #minecraft:slabs[type=bottom] run scoreboard players set lf_wheel Animations 1
		#execute as @e[tag=rover,tag=wheel,tag=right,tag=front] at @s positioned ^-1 ^ ^1.45 unless block ~ ~0.25 ~ air unless block ~ ~ ~ #minecraft:slabs[type=bottom] run scoreboard players set rf_wheel Animations 1
		# on block
		execute as @e[tag=rover,tag=wheel,tag=left,tag=front] at @s positioned ^1 ^0.1 ^1.75 unless block ~ ~0.5 ~ air unless block ~ ~ ~ #minecraft:slabs[type=bottom] run scoreboard players set lf_wheel Animations 2
		execute as @e[tag=rover,tag=wheel,tag=right,tag=front] at @s positioned ^-1 ^0.1 ^1.75 unless block ~ ~0.5 ~ air unless block ~ ~ ~ #minecraft:slabs[type=bottom] run scoreboard players set rf_wheel Animations 2
	# back
		# on slab
		execute as @e[tag=rover,tag=wheel,tag=left,tag=back] at @s positioned ^1 ^ ^-1 unless block ~ ~0.25 ~ air unless block ~ ~ ~ #minecraft:slabs[type=bottom] run scoreboard players set lb_wheel Animations 1
		execute as @e[tag=rover,tag=wheel,tag=right,tag=back] at @s positioned ^-1 ^ ^-1 unless block ~ ~0.25 ~ air unless block ~ ~ ~ #minecraft:slabs[type=bottom] run scoreboard players set rb_wheel Animations 1
		# on block
		execute as @e[tag=rover,tag=wheel,tag=left,tag=back] at @s positioned ^1 ^0.1 ^-1.75 unless block ~ ~0.5 ~ air unless block ~ ~ ~ #minecraft:slabs[type=bottom] run scoreboard players set lb_wheel Animations 2
		execute as @e[tag=rover,tag=wheel,tag=right,tag=back] at @s positioned ^-1 ^0.1 ^-1.75 unless block ~ ~0.5 ~ air unless block ~ ~ ~ #minecraft:slabs[type=bottom] run scoreboard players set rb_wheel Animations 2
	# mid
	execute as @e[tag=rover,tag=wheel,tag=left,tag=mid] at @s positioned ^1 ^ ^ unless block ~ ~ ~ air unless block ~ ~ ~ #minecraft:slabs[type=bottom] as @e[tag=rover,tag=base] at @s run tp @s ~ ~0.05 ~
	execute as @e[tag=rover,tag=wheel,tag=right,tag=mid] at @s positioned ^-1 ^ ^ unless block ~ ~ ~ air unless block ~ ~ ~ #minecraft:slabs[type=bottom] as @e[tag=rover,tag=base] at @s run tp @s ~ ~0.05 ~



# Exceptions
# Back
execute as @e[tag=rover,tag=wheel,tag=left,tag=back] at @s if score rb_wheel Animations matches -1 if score lb_wheel Animations matches 2 positioned ^1 ^ ^-1 if block ~ ~-0.25 ~ air run scoreboard players set lb_wheel Animations -1
execute as @e[tag=rover,tag=wheel,tag=left,tag=back] at @s if score rb_wheel Animations matches -1 if score lb_wheel Animations matches 2 positioned ^1 ^ ^-1 if block ~ ~-0.25 ~ #minecraft:slabs[type=bottom] run scoreboard players set lb_wheel Animations -1
execute as @e[tag=rover,tag=wheel,tag=left,tag=back] at @s if score rb_wheel Animations matches -1 if score lb_wheel Animations matches 2 positioned ^1 ^ ^-1 unless block ~ ~-0.25 ~ air run scoreboard players set lb_wheel Animations 0

execute as @e[tag=rover,tag=wheel,tag=right,tag=back] at @s if score lb_wheel Animations matches -1 if score rb_wheel Animations matches 2 positioned ^-1 ^ ^-1 if block ~ ~-0.25 ~ air run scoreboard players set rb_wheel Animations -1
execute as @e[tag=rover,tag=wheel,tag=right,tag=back] at @s if score lb_wheel Animations matches -1 if score rb_wheel Animations matches 2 positioned ^-1 ^ ^-1 if block ~ ~-0.25 ~ #minecraft:slabs[type=bottom] run scoreboard players set rb_wheel Animations -1
execute as @e[tag=rover,tag=wheel,tag=right,tag=back] at @s if score lb_wheel Animations matches -1 if score rb_wheel Animations matches 2 positioned ^-1 ^ ^-1 unless block ~ ~-0.25 ~ air run scoreboard players set rb_wheel Animations 0

# Front
execute as @e[tag=rover,tag=wheel,tag=left,tag=front] at @s if score rf_wheel Animations matches -1 if score lf_wheel Animations matches 2 positioned ^1 ^ ^1 if block ~ ~-0.25 ~ air run scoreboard players set lf_wheel Animations -1
execute as @e[tag=rover,tag=wheel,tag=left,tag=front] at @s if score rf_wheel Animations matches -1 if score lf_wheel Animations matches 2 positioned ^1 ^ ^1 if block ~ ~-0.25 ~ #minecraft:slabs[type=bottom] run scoreboard players set lf_wheel Animations -1
execute as @e[tag=rover,tag=wheel,tag=left,tag=front] at @s if score rf_wheel Animations matches -1 if score lf_wheel Animations matches 2 positioned ^1 ^ ^1 unless block ~ ~-0.25 ~ air run scoreboard players set lf_wheel Animations 0

execute as @e[tag=rover,tag=wheel,tag=right,tag=front] at @s if score lf_wheel Animations matches -1 if score rf_wheel Animations matches 2 positioned ^-1 ^ ^1 if block ~ ~-0.25 ~ air run scoreboard players set rf_wheel Animations -1
execute as @e[tag=rover,tag=wheel,tag=right,tag=front] at @s if score lf_wheel Animations matches -1 if score rf_wheel Animations matches 2 positioned ^-1 ^ ^1 if block ~ ~-0.25 ~ #minecraft:slabs[type=bottom] run scoreboard players set rf_wheel Animations -1
execute as @e[tag=rover,tag=wheel,tag=right,tag=front] at @s if score lf_wheel Animations matches -1 if score rf_wheel Animations matches 2 positioned ^-1 ^ ^1 unless block ~ ~-0.25 ~ air run scoreboard players set rf_wheel Animations 0