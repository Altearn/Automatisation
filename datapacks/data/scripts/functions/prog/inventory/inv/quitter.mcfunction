function scripts:prog/inventory/clear/clear_inv
replaceitem entity @a[tag=player] inventory.11 minecraft:gold_ingot{CustomModelData:10000,display:{Name:'[{"text":"Oui je veux Quitter ","italic":false,"color":"gold"},{"text":"sans","bold":true},{"text":" Sauvegarder.","bold":false}]'}}
replaceitem entity @a[tag=player] inventory.15 minecraft:gold_ingot{CustomModelData:10001,display:{Name:'[{"text":"Retour","italic":false,"color":"gold"}]',Lore:['[{"text":"Retourner à la programmation.","italic":false,"color":"gray"}]']}}

scoreboard players set inv_display prog -201