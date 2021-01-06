### Fonction Atterissage
# Warnings
execute if score prog_step prog matches 2 if score check_modules complete_task matches 0 run tellraw @a[tag=player] ["",{"text":"WARNING : ","color":"gold"},{"text":"Les Modules n'ont pas été vérifié.","bold":false,"color":"red"}]
execute if score prog_step prog matches 2 if score check_modules complete_task matches 1 run tellraw @a[tag=player] ["",{"text":"WARNING : ","color":"gold"},{"text":"Les panneaux solaires n'ont pas été déplié.","bold":false,"color":"red"}]
execute if score prog_step prog matches 2 if score Movements complete_task matches 0..3 run tellraw @a[tag=player] ["",{"text":"WARNING : ","color":"gold"},{"text":"Certains mouvements du rover n'ont pas été testé.","bold":false,"color":"red"}]
execute if score prog_step prog matches 2 if score solarpanel complete_task matches 0 run tellraw @a[tag=player] ["",{"text":"WARNING : ","color":"gold"},{"text":"Les panneaux solaires ne sont pas déplié.","bold":false,"color":"red"}]
# Complete
execute if score prog_step prog matches 2 if score Movements complete_task matches 4.. if score solarpanel complete_task matches 1.. run tellraw @a[tag=player] ["",{"text":"COMPLETE : ","color":"dark_aqua"},{"text":"Fonction \"Atterrissage\" opérationnel !","bold":false,"color":"green"}]
execute if score prog_step prog matches 2 if score Movements complete_task matches 4.. if score solarpanel complete_task matches 1.. run function scripts:prog/inventory/test/save
execute if score prog_step prog matches 2 if score Movements complete_task matches 4.. if score solarpanel complete_task matches 1.. if score level_prog story matches 0 run scoreboard players set level_prog story 1



### Fonction Scan 360
# Warnings
execute if score prog_step prog matches 3 unless score Check_ScanPower complete_task = Check_ScanPower complete_task run tellraw @a[tag=player] ["",{"text":"WARNING : ","color":"gold"},{"text":"Le scanner n'a pas été allumé.","bold":false,"color":"red"}]
execute if score prog_step prog matches 3 if score ScanPower complete_task matches 1.. run tellraw @a[tag=player] ["",{"text":"WARNING : ","color":"gold"},{"text":"Le scanner n'a pas été éteint.","bold":false,"color":"red"}]
execute if score prog_step prog matches 3 if score ScanComplete complete_task matches 0..3 run tellraw @a[tag=player] ["",{"text":"WARNING : ","color":"gold"},{"text":"Le scan n'est pas complet.","bold":false,"color":"red"}]
# Complete
execute if score prog_step prog matches 3 if score ScanComplete complete_task matches 4.. run tellraw @a[tag=player] ["",{"text":"COMPLETE : ","color":"dark_aqua"},{"text":"Fonction \"SCAN 360\" opérationnel !","bold":false,"color":"green"}]
execute if score prog_step prog matches 3 if score ScanComplete complete_task matches 4.. run kill @e[tag=test_scan]
execute if score prog_step prog matches 3 if score ScanComplete complete_task matches 4.. run function scripts:prog/inventory/test/save
execute if score prog_step prog matches 3 if score ScanComplete complete_task matches 4.. if score level_prog story matches 1 run scoreboard players set level_prog story 2



### Fonction Ramasser
# Warnings
execute if score prog_step prog matches 5 if score Pince complete_task matches ..-1 run tellraw @a[tag=player] ["",{"text":"WARNING : ","color":"gold"},{"text":"La pince a été fermé alors qu'elle était déjà fermé.","bold":false,"color":"red"}]
execute if score prog_step prog matches 5 if score Pince complete_task matches 1.. run tellraw @a[tag=player] ["",{"text":"WARNING : ","color":"gold"},{"text":"La pince a été ouverte alors qu'elle était déjà ouverte.","bold":false,"color":"red"}]
execute if score prog_step prog matches 5 if score Bras complete_task matches ..-1 run tellraw @a[tag=player] ["",{"text":"WARNING : ","color":"gold"},{"text":"Le bras a été replié alors qu'il était déjà replié.","bold":false,"color":"red"}]
execute if score prog_step prog matches 5 if score Bras complete_task matches 1.. run tellraw @a[tag=player] ["",{"text":"WARNING : ","color":"gold"},{"text":"Le bras a été déplié alors qu'il était déjà déplié.","bold":false,"color":"red"}]

execute if score prog_step prog matches 5 if score BrasComplete complete_task matches 0 run tellraw @a[tag=player] ["",{"text":"WARNING : ","color":"gold"},{"text":"Le bras n'a pas été déplié.","bold":false,"color":"red"}]
execute if score prog_step prog matches 5 if score BrasComplete complete_task matches 1 run tellraw @a[tag=player] ["",{"text":"WARNING : ","color":"gold"},{"text":"Le bras n'a pas été déplacé vers la roche","bold":false,"color":"red"}]
execute if score prog_step prog matches 5 if score BrasComplete complete_task matches 2 run tellraw @a[tag=player] ["",{"text":"WARNING : ","color":"gold"},{"text":"La pince n'a pas été ouverte","bold":false,"color":"red"}]
execute if score prog_step prog matches 5 if score BrasComplete complete_task matches 3 run tellraw @a[tag=player] ["",{"text":"WARNING : ","color":"gold"},{"text":"La roche n'a pas été ramassé","bold":false,"color":"red"}]
execute if score prog_step prog matches 5 if score BrasComplete complete_task matches 4 run tellraw @a[tag=player] ["",{"text":"WARNING : ","color":"gold"},{"text":"Le bras n'a pas été déplacé vers le stockage du rover","bold":false,"color":"red"}]
execute if score prog_step prog matches 5 if score BrasComplete complete_task matches 5 run tellraw @a[tag=player] ["",{"text":"WARNING : ","color":"gold"},{"text":"Le bras n'a pas laché la roche dans le rover","bold":false,"color":"red"}]
execute if score prog_step prog matches 5 if score BrasComplete complete_task matches 6 run tellraw @a[tag=player] ["",{"text":"WARNING : ","color":"gold"},{"text":"Le bras n'a pas été replié","bold":false,"color":"red"}]
# Complete
execute if score prog_step prog matches 5 if score BrasComplete complete_task matches 7 run tellraw @a[tag=player] ["",{"text":"COMPLETE : ","color":"dark_aqua"},{"text":"Fonction \"Ramasser\" opérationnel !","bold":false,"color":"green"}]
execute if score prog_step prog matches 5 if score BrasComplete complete_task matches 7 run function scripts:prog/inventory/test/save
execute if score prog_step prog matches 5 if score BrasComplete complete_task matches 7 if score level_prog story matches 2 run scoreboard players set level_prog story 3



### Fonction Analyser
# Warnings
execute if score prog_step prog matches 6 if score ForeuseComplete complete_task matches 0 run tellraw @a[tag=player] ["",{"text":"WARNING : ","color":"gold"},{"text":"La foreuse n'a pas été posé.","bold":false,"color":"red"}]
execute if score prog_step prog matches 6 if score ForeuseComplete complete_task matches 1..2 run tellraw @a[tag=player] ["",{"text":"WARNING : ","color":"gold"},{"text":"La foreuse n'a pas éffectué sa tâche.","bold":false,"color":"red"}]
execute if score prog_step prog matches 6 if score ForeuseComplete complete_task matches 1.. if score ForeuseInit complete_task matches 1.. run tellraw @a[tag=player] ["",{"text":"WARNING : ","color":"gold"},{"text":"La foreuse n'a pas été remonté.","bold":false,"color":"red"}]
execute if score prog_step prog matches 6 if score ForeuseComplete complete_task matches 1.. if score ForeusePower complete_task matches 1.. run tellraw @a[tag=player] ["",{"text":"WARNING : ","color":"gold"},{"text":"La foreuse n'a pas été éteinte.","bold":false,"color":"red"}]
execute if score prog_step prog matches 6 if score ForeuseComplete complete_task matches 3 run tellraw @a[tag=player] ["",{"text":"WARNING : ","color":"gold"},{"text":"Aucunes conditions ne détectent la fin du forage.","bold":false,"color":"red"}]
execute if score prog_step prog matches 6 if score ForeuseComplete complete_task matches 4 run tellraw @a[tag=player] ["",{"text":"WARNING : ","color":"gold"},{"text":"Le forage n'a pas été analysé.","bold":false,"color":"red"}]
execute if score prog_step prog matches 6 if score ForeuseComplete complete_task matches 4 if score ForeuseInit complete_task matches 0 run tellraw @a[tag=player] ["",{"text":"WARNING : ","color":"gold"},{"text":"L'analyse doit se faire après le forage, mais avant de remonter la foreuse.","bold":false,"color":"red"}]
# Complete
execute if score prog_step prog matches 6 if score ForeuseComplete complete_task matches 5 run tellraw @a[tag=player] ["",{"text":"COMPLETE : ","color":"dark_aqua"},{"text":"Fonction \"Analyser\" opérationnel !","bold":false,"color":"green"}]
execute if score prog_step prog matches 6 if score ForeuseComplete complete_task matches 5 run function scripts:prog/inventory/test/save
execute if score prog_step prog matches 6 if score ForeuseComplete complete_task matches 5 if score level_prog story matches 3 run scoreboard players set level_prog story 4



### Fonction Aller à
# Warnings
execute if score prog_step prog matches 7 if score Loop complete_task matches 0 run tellraw @a[tag=player] ["",{"text":"WARNING : ","color":"gold"},{"text":"Votre fonction ne sera pas répété.","bold":false,"color":"red"}]
execute if score prog_step prog matches 7 if score If complete_task matches 0 run tellraw @a[tag=player] ["",{"text":"WARNING : ","color":"gold"},{"text":"Il n'y a aucunes détection d'obstacles.","bold":false,"color":"red"}]
execute if score prog_step prog matches 7 if score dodge complete_task matches 0 run tellraw @a[tag=player] ["",{"text":"WARNING : ","color":"gold"},{"text":"→ Il n'y a pas de fonction pour éviter les obstacles.\n→ La fonction pour éviter les obstacles est mal placé","bold":false,"color":"red"}]
execute if score prog_step prog matches 7 if score goto complete_task matches 0 run tellraw @a[tag=player] ["",{"text":"WARNING : ","color":"gold"},{"text":"Votre rover ne peux pas se diriger vers sa destination.","bold":false,"color":"red"}]
execute if score prog_step prog matches 7 if score Destination complete_task matches 0 run tellraw @a[tag=player] ["",{"text":"WARNING : ","color":"gold"},{"text":"Il n'y a aucunes détection d'arriver à destination.","bold":false,"color":"red"}]
execute if score prog_step prog matches 7 if score Goto_OK complete_task matches 5 if score Goto_Complete complete_task matches 0..5 run tellraw @a[tag=player] ["",{"text":"WARNING : ","color":"gold"},{"text":"Les éléments de résolution de la fonction sont présents, mais la fonction n'est pas correct !","bold":false,"color":"red"}]
# Complete
execute if score prog_step prog matches 7 if score Goto_OK complete_task matches 5 if score Goto_Complete complete_task matches 6 run tellraw @a[tag=player] ["",{"text":"COMPLETE : ","color":"dark_aqua"},{"text":"Fonction \"Aller à\" opérationnel !","bold":false,"color":"green"}]
execute if score prog_step prog matches 7 if score Goto_OK complete_task matches 5 if score Goto_Complete complete_task matches 6 run function scripts:prog/inventory/test/save
execute if score prog_step prog matches 7 if score Goto_OK complete_task matches 5 if score Goto_Complete complete_task matches 6 if score level_prog story matches 4 run scoreboard players set level_prog story 5



### Fonction MAIN
# Warnings
execute if score prog_step prog matches 8 if score MainComplete complete_task matches 0 run tellraw @a[tag=player] ["",{"text":"WARNING : ","color":"gold"},{"text":"Votre rover doit dabord tester ses modules après l'attérissage","bold":false,"color":"red"}]
execute if score prog_step prog matches 8 if score MainComplete complete_task matches 1 run tellraw @a[tag=player] ["",{"text":"WARNING : ","color":"gold"},{"text":"Votre rover doit scanner l'environnement avant d'aller récupérer des échantillons","bold":false,"color":"red"}]

execute if score prog_step prog matches 8 if score MainComplete complete_task matches 2 run tellraw @a[tag=player] ["",{"text":"WARNING : ","color":"gold"},{"text":"Le rover doit se rendre au point d'analyse avant toute autres actions 2","bold":false,"color":"red"}]
execute if score prog_step prog matches 8 if score MainComplete complete_task matches 4 run tellraw @a[tag=player] ["",{"text":"WARNING : ","color":"gold"},{"text":"Le rover doit se rendre au point d'analyse avant toute autres actions 4","bold":false,"color":"red"}]
execute if score prog_step prog matches 8 if score MainComplete complete_task matches 6 run tellraw @a[tag=player] ["",{"text":"WARNING : ","color":"gold"},{"text":"Le rover doit se rendre au point d'analyse avant toute autres actions 6","bold":false,"color":"red"}]


execute if score prog_step prog matches 8 if score MainComplete complete_task matches 3 run tellraw @a[tag=player] ["",{"text":"WARNING : ","color":"gold"},{"text":"La condition du test de type de sol n'a pas aboutis.\n→ Il n'y a pas de condition de test de type de sol.\n→ La fonction qui est retourné n'est pas la bonne, par rapport à la condition.\n→ La condition du test de type de sol doit être booléenne (avec un résultat si TRUE ou FALSE)","bold":false,"color":"red"}]
execute if score prog_step prog matches 8 if score MainComplete complete_task matches 5 run tellraw @a[tag=player] ["",{"text":"WARNING : ","color":"gold"},{"text":"La condition du test de type de sol n'a pas aboutis.\n→ Il n'y a pas de condition de test de type de sol.\n→ La fonction qui est retourné n'est pas la bonne, par rapport à la condition.\n→ La condition du test de type de sol doit être booléenne (avec un résultat si TRUE ou FALSE)","bold":false,"color":"red"}]
execute if score prog_step prog matches 8 if score MainComplete complete_task matches 7 run tellraw @a[tag=player] ["",{"text":"WARNING : ","color":"gold"},{"text":"La condition du test de type de sol n'a pas aboutis.\n→ Il n'y a pas de condition de test de type de sol.\n→ La fonction qui est retourné n'est pas la bonne, par rapport à la condition.\n→ La condition du test de type de sol doit être booléenne (avec un résultat si TRUE ou FALSE)","bold":false,"color":"red"}]


execute if score prog_step prog matches 8 if score MainComplete complete_task matches 8..9 unless score CheckDeplacement complete_task matches 9 run tellraw @a[tag=player] ["",{"text":"WARNING : ","color":"gold"},{"text":"Votre rover doit aller aux 3 zones d'analyse.","bold":false,"color":"red"}]

execute if score prog_step prog matches 8 if score MainComplete complete_task matches 8 run tellraw @a[tag=player] ["",{"text":"WARNING : ","color":"gold"},{"text":"Votre rover doit aller vers la zone d'extraction.","bold":false,"color":"red"}]

execute if score prog_step prog matches 8 if score MainComplete complete_task matches 9 if score CheckDeplacement complete_task matches 9 run tellraw @a[tag=player] ["",{"text":"COMPLETE : ","color":"dark_aqua"},{"text":"Fonction \"Principale\" opérationnel !","bold":false,"color":"green"}]
execute if score prog_step prog matches 8 if score MainComplete complete_task matches 9 if score CheckDeplacement complete_task matches 9 run function scripts:prog/inventory/test/save
execute if score prog_step prog matches 8 if score MainComplete complete_task matches 9 if score CheckDeplacement complete_task matches 9 if score level_prog story matches 5 run scoreboard players set timer story 2



