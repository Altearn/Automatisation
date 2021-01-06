function scripts:prog/inventory/clear/clear_inv
replaceitem entity @a[tag=player] inventory.4 minecraft:gold_ingot{CustomModelData:79,display:{Name:'[{"text":"Lancé un Scan Topographique","italic":false,"color":"gold"}]'}}
replaceitem entity @a[tag=player] inventory.12 minecraft:gold_ingot{CustomModelData:69,display:{Name:'[{"text":"Allumer le Scanner","italic":false,"color":"gold"}]'}}
replaceitem entity @a[tag=player] inventory.14 minecraft:gold_ingot{CustomModelData:71,display:{Name:'[{"text":"Eteindre le Scanner","italic":false,"color":"gold"}]'}}
replaceitem entity @a[tag=player] inventory.18 minecraft:gold_ingot{CustomModelData:73,display:{Name:'[{"text":"Tourné de 90°","italic":false,"color":"gold"}]',Lore:['[{"text":"Incrémente l\'angle du scanner de 90°.","italic":false,"color":"gray"}]']}}
replaceitem entity @a[tag=player] inventory.19 minecraft:gold_ingot{CustomModelData:75,display:{Name:'[{"text":"Tourné de -90°","italic":false,"color":"gold"}]',Lore:['[{"text":"Décrémente l\'angle du scanner de 90°.","italic":false,"color":"gray"}]']}}
replaceitem entity @a[tag=player] inventory.20 minecraft:gold_ingot{CustomModelData:77,display:{Name:'[{"text":"Tourné de 180°","italic":false,"color":"gold"}]',Lore:['[{"text":"Incrémente l\'angle du scanner de 180°.","italic":false,"color":"gray"}]']}}
replaceitem entity @a[tag=player] inventory.23 minecraft:gold_ingot{CustomModelData:61,display:{Name:'[{"text":"Tourné à 0","italic":false,"color":"gold"}]',Lore:['[{"text":"Positionne la caméra à 0°.","italic":false,"color":"gray"}]']}}
replaceitem entity @a[tag=player] inventory.24 minecraft:gold_ingot{CustomModelData:63,display:{Name:'[{"text":"Tourné à 90°","italic":false,"color":"gold"}]',Lore:['[{"text":"Positionne la caméra à 90°.","italic":false,"color":"gray"}]']}}
replaceitem entity @a[tag=player] inventory.25 minecraft:gold_ingot{CustomModelData:65,display:{Name:'[{"text":"Tourné à 180°","italic":false,"color":"gold"}]',Lore:['[{"text":"Positionne la caméra à 180°.","italic":false,"color":"gray"}]']}}
replaceitem entity @a[tag=player] inventory.26 minecraft:gold_ingot{CustomModelData:67,display:{Name:'[{"text":"Tourné à 270°","italic":false,"color":"gold"}]',Lore:['[{"text":"Positionne la caméra à 270°.","italic":false,"color":"gray"}]']}}

replaceitem entity @a[tag=player] inventory.0 minecraft:gold_ingot{CustomModelData:4000,display:{Name:'[{"text":"Retour","italic":false,"color":"gold"}]'}}

scoreboard players set inv_display prog -105