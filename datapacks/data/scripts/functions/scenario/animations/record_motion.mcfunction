### FOR DEV ONLY ###

# /give @p minecraft:carrot_on_a_stick{Record1:1}

# Record Animation[N°]
	# Add an Animation : 		/data modify storage minecraft:motion Animation insert -1 value {Pos:[],Rotation:[]}
	# Reset all Animations :	/data merge storage motion {Animation:[{Pos:[],Rotation:[]}]}
	# Reset Animations[N°] :	/data remove storage motion Animation[14]

# Reset old Animation[N°]
execute as @a at @s if score @s Click matches 1 run data modify storage motion Animation[14] merge value {Pos:[],Rotation:[]}
execute as @a at @s if score @s Click matches 1 unless data storage minecraft:motion Animation[14] run data modify storage minecraft:motion Animation insert -1 value {Pos:[],Rotation:[]}
execute as @a at @s if score @s Click matches 1 run scoreboard players set @s Click 2
# Record new Animation[N°]
execute as @a at @s if score @s Click matches 2 run data modify storage minecraft:motion Animation[14].Pos insert -1 from entity @s Pos
execute as @a at @s if score @s Click matches 2 run data modify storage minecraft:motion Animation[14].Rotation insert -1 from entity @s Rotation
execute as @a at @s if score @s Click matches 2 run title @s actionbar {"text":"Record Animation[14] in progress...","color":"gold","bold":true}

# Stop Recording
execute as @a at @s if score @s Click matches 3.. run title @s actionbar {"text":"End recording!","color":"dark_green","bold":true}
execute as @a at @s if score @s Click matches 3.. run scoreboard players set @s Click 0