function scripts:prog/inventory/clear/clear_inv
replaceitem entity @a[tag=player] inventory.10 minecraft:gold_ingot{CustomModelData:93,display:{Name:'[{"text":"Déplier les Panneaux Solaire","italic":false,"color":"gold"}]'}}
replaceitem entity @a[tag=player] inventory.13 minecraft:gold_ingot{CustomModelData:91,display:{Name:'[{"text":"Plier les Panneaux Solaire","italic":false,"color":"gold"}]'}}
replaceitem entity @a[tag=player] inventory.16 minecraft:gold_ingot{CustomModelData:95,display:{Name:'[{"text":"Vérifier les Modules","italic":false,"color":"gold"}]'}}

replaceitem entity @a[tag=player] inventory.0 minecraft:gold_ingot{CustomModelData:4000,display:{Name:'[{"text":"Retour","italic":false,"color":"gold"}]'}}

scoreboard players set inv_display prog -104