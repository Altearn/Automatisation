function scripts:prog/inventory/clear/clear_inv
replaceitem entity @a[tag=player] inventory.11 minecraft:gold_ingot{CustomModelData:10000,display:{Name:'[{"text":"Vérifier la Function","italic":false,"color":"gold"}]',Lore:['[{"text":"Simule votre fonction et indique les erreurs.","italic":false,"color":"gray"}]']}}
replaceitem entity @a[tag=player] inventory.13 minecraft:gold_ingot{CustomModelData:10000,display:{Name:'[{"text":"Sauvegarder et Quitter","italic":false,"color":"gold"}]',Lore:['[{"text":"Sauvegarde votre fonction et va au menu.","italic":false,"color":"gray"}]']}}
replaceitem entity @a[tag=player] inventory.15 minecraft:gold_ingot{CustomModelData:10001,display:{Name:'[{"text":"Retour","italic":false,"color":"gold"}]',Lore:['[{"text":"Retourner à la programmation.","italic":false,"color":"gray"}]']}}

scoreboard players set inv_display prog -200