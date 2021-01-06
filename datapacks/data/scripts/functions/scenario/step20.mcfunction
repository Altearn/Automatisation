execute if score timer story matches 1.. as @e[tag=pesier] at @s run tp @s ~ ~ ~ facing entity @p
execute if score timer story matches 1 run scoreboard players set timer story 2

execute if score timer story matches 10 as @a[tag=player] run function scripts:tablette/give

execute if score timer story matches 10 as @a at @s run playsound minecraft:entity.player.levelup master @s ~ ~ ~
execute if score timer story matches 10 run title @a times 20 40 20
execute if score timer story matches 10 run title @a subtitle {"text":"Vous avez terminé la map","color":"gold"}
execute if score timer story matches 10 run title @a title {"text":"Félicitation !","bold":true,"color":"dark_green"}

execute if score timer story matches 70 run title @a times 20 40 20
execute if score timer story matches 70 run title @a subtitle {"text":"Utilisez votre tablette","color":"gold"}
execute if score timer story matches 70 run title @a title {"text":"Recommencer ?","bold":true,"color":"dark_green"}

execute if score timer story matches 100.. run scoreboard players enable @a[tag=player] sign
execute if score timer story matches 100.. run scoreboard players reset timer story

execute as @a if score @s sign matches 1.. run reload