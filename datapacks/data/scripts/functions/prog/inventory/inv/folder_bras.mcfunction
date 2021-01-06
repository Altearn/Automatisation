function scripts:prog/inventory/clear/clear_inv
replaceitem entity @a[tag=player] inventory.10 minecraft:gold_ingot{CustomModelData:29,display:{Name:'[{"text":"Déplier le Bras","italic":false,"color":"gold"}]'}}
replaceitem entity @a[tag=player] inventory.11 minecraft:gold_ingot{CustomModelData:27,display:{Name:'[{"text":"Plier le Bras et ranger la pince","italic":false,"color":"gold"}]'}}
replaceitem entity @a[tag=player] inventory.15 minecraft:gold_ingot{CustomModelData:25,display:{Name:'[{"text":"Ramasser la Roche","italic":false,"color":"gold"}]'}}
replaceitem entity @a[tag=player] inventory.16 minecraft:gold_ingot{CustomModelData:23,display:{Name:'[{"text":"Ouvrir la pince","italic":false,"color":"gold"}]'}}
replaceitem entity @a[tag=player] inventory.21 minecraft:gold_ingot{BrasType:1,CustomModelData:21,display:{Name:'[{"text":"Déplacement du Bras vers la Roche","italic":false,"color":"gold"}]'}}
replaceitem entity @a[tag=player] inventory.23 minecraft:gold_ingot{BrasType:2,CustomModelData:21,display:{Name:'[{"text":"Déplacement du Bras vers le Stockage du Rover","italic":false,"color":"gold"}]'}}

replaceitem entity @a[tag=player] inventory.0 minecraft:gold_ingot{CustomModelData:4000,display:{Name:'[{"text":"Retour","italic":false,"color":"gold"}]'}}

scoreboard players set inv_display prog -101