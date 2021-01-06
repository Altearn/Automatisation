#gamerule sendCommandFeedback true.
advancement revoke @a only scripts:root

scoreboard objectives remove Animations
scoreboard objectives remove story

tag @a remove player
tag @a remove zone0
tag @a remove zone1

kill @e[tag=rover]
kill @e[tag=dialog_area]
kill @e[tag=motion]
kill @e[tag=pnj]

datapack disable "file/Rover"
datapack disable "file/Rover.zip"
tellraw @a {"text":"Uninstall successfully !","color":"green"}