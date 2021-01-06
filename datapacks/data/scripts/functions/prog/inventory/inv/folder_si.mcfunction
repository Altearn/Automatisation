function scripts:prog/inventory/clear/clear_inv
replaceitem entity @a[tag=player] inventory.9 minecraft:gold_ingot{IfType:1,CustomModelData:100,display:{Name:'[{"text":"Si Sol Dur","italic":false,"color":"gold"}]'}}
replaceitem entity @a[tag=player] inventory.11 minecraft:gold_ingot{IfType:2,CustomModelData:100,display:{Name:'[{"text":"Si Sol Mou","italic":false,"color":"gold"}]'}}
replaceitem entity @a[tag=player] inventory.13 minecraft:gold_ingot{IfType:3,CustomModelData:100,display:{Name:'[{"text":"Si Rover arriver à Destination","italic":false,"color":"gold"}]'}}
replaceitem entity @a[tag=player] inventory.15 minecraft:gold_ingot{IfType:5,CustomModelData:100,display:{Name:'[{"text":"Si Obstacle","italic":false,"color":"gold"}]'}}
replaceitem entity @a[tag=player] inventory.17 minecraft:gold_ingot{IfType:6,CustomModelData:100,display:{Name:'[{"text":"Si Foreuse à Fini","italic":false,"color":"gold"}]'}}

replaceitem entity @a[tag=player] inventory.0 minecraft:gold_ingot{CustomModelData:4000,display:{Name:'[{"text":"Retour","italic":false,"color":"gold"}]'}}

scoreboard players set inv_display prog -106