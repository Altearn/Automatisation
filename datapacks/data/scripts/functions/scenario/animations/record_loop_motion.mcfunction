### FOR DEV ONLY ###

# /give @p minecraft:carrot_on_a_stick{Record2:2}

# Record Animation[N°]
	# Add an Animation : 		/data modify storage minecraft:loop_motion Animation insert -1 value {Pos:[],Rotation:[]}
	# Reset all Animations :	/data merge storage loop_motion {Animation:[{Pos:[],Rotation:[]}]}
	# Reset Animations[N°] :	/data remove storage loop_motion Animation[7]

# Reset old Animation[N°]
execute as @a at @s if score @s Click matches 1 run data modify storage loop_motion Animation[7] merge value {Pos:[],Rotation:[]}
execute as @a at @s if score @s Click matches 1 unless data storage minecraft:loop_motion Animation[7] run data modify storage minecraft:loop_motion Animation insert -1 value {Pos:[],Rotation:[]}
execute as @a at @s if score @s Click matches 1 run scoreboard players set @s Click 2
# Record new Animation[N°]
execute as @a at @s if score @s Click matches 2 run data modify storage minecraft:loop_motion Animation[7].Pos insert -1 from entity @s Pos
execute as @a at @s if score @s Click matches 2 run data modify storage minecraft:loop_motion Animation[7].Rotation insert -1 from entity @s Rotation
execute as @a at @s if score @s Click matches 2 run title @s actionbar {"text":"Record Animation[7] in progress...","color":"gold","bold":true}

# Stop Recording
execute as @a at @s if score @s Click matches 3.. run title @s actionbar {"text":"End recording!","color":"dark_green","bold":true}
execute as @a at @s if score @s Click matches 3.. run scoreboard players set @s Click 0