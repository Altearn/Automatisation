function scripts:prog/inventory/clear/clear_inv
replaceitem entity @a[tag=player] inventory.10 minecraft:gold_ingot{CustomModelData:41,display:{Name:'[{"text":"Allumer la Foreuse","italic":false,"color":"gold"}]'}}
replaceitem entity @a[tag=player] inventory.11 minecraft:gold_ingot{CustomModelData:45,display:{Name:'[{"text":"Eteindre la Foreuse","italic":false,"color":"gold"}]'}}
replaceitem entity @a[tag=player] inventory.15 minecraft:gold_ingot{CustomModelData:47,display:{Name:'[{"text":"Déposé la Foreuse","italic":false,"color":"gold"}]'}}
replaceitem entity @a[tag=player] inventory.16 minecraft:gold_ingot{CustomModelData:49,display:{Name:'[{"text":"Récupérer la Foreuse","italic":false,"color":"gold"}]'}}
replaceitem entity @a[tag=player] inventory.21 minecraft:gold_ingot{CustomModelData:51,display:{Name:'[{"text":"Creuser","italic":false,"color":"gold"}]',Lore:['[{"text":"Cette action a besoin d\'une ","italic":false,"color":"gray"},{"text":"boucle","bold":true},{"text":"","bold":false}]','[{"text":"pour fonctionner.","italic":false,"color":"gray"}]']}}
replaceitem entity @a[tag=player] inventory.23 minecraft:gold_ingot{CustomModelData:43,display:{Name:'[{"text":"Analyser les fragments","italic":false,"color":"gold"}]'}}

replaceitem entity @a[tag=player] inventory.0 minecraft:gold_ingot{CustomModelData:4000,display:{Name:'[{"text":"Retour","italic":false,"color":"gold"}]'}}

scoreboard players set inv_display prog -107