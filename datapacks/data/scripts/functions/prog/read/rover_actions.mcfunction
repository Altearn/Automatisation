## Mouvements ##
execute if score Action prog matches 1 if score logs prog matches 1 run tellraw @a[tag=player] ["",{"text":"Avancer"}]
execute if score Action prog matches 2 if score logs prog matches 1 run tellraw @a[tag=player] ["",{"text":"Reculer"}]
execute if score Action prog matches 3 if score logs prog matches 1 run tellraw @a[tag=player] ["",{"text":"Rotation horaire"}]
execute if score Action prog matches 4 if score logs prog matches 1 run tellraw @a[tag=player] ["",{"text":"Rotation antihoraire"}]

execute if score Action prog matches 5 if score DeplacementType prog matches 1 if score logs prog matches 1 run tellraw @a[tag=player] ["",{"text":"Deplacement vers Site d'Extraction"}]
execute if score Action prog matches 5 if score DeplacementType prog matches 2 if score logs prog matches 1 run tellraw @a[tag=player] ["",{"text":"Deplacement vers Zone d'analyse 1"}]
execute if score Action prog matches 5 if score DeplacementType prog matches 3 if score logs prog matches 1 run tellraw @a[tag=player] ["",{"text":"Deplacement vers Zone d'analyse 2"}]
execute if score Action prog matches 5 if score DeplacementType prog matches 4 if score logs prog matches 1 run tellraw @a[tag=player] ["",{"text":"Deplacement vers Zone d'analyse 3"}]
execute if score Action prog matches 5 if score DeplacementType prog matches 5 if score logs prog matches 1 run tellraw @a[tag=player] ["",{"text":"Deplacement vers Point d'atterrissage"}]
execute if score Action prog matches 5 if score DeplacementType prog matches 6 if score logs prog matches 1 run tellraw @a[tag=player] ["",{"text":"Deplacement vers Point de destination"}]
execute if score Action prog matches 5 if score DeplacementType prog matches 1..6 run scoreboard players set Deplacement complete_task 1

## Bras ##
execute if score Action prog matches 6 if score BrasType prog matches 1 if score logs prog matches 1 run tellraw @a[tag=player] ["",{"text":"Bras:Déplacer vers roche"}]
execute if score Action prog matches 6 if score BrasType prog matches 2 if score logs prog matches 1 run tellraw @a[tag=player] ["",{"text":"Bras:Déplacer vers stockage"}]
execute if score Action prog matches 7 if score logs prog matches 1 run tellraw @a[tag=player] ["",{"text":"Bras:Ouvrir"}]
execute if score Action prog matches 8 if score logs prog matches 1 run tellraw @a[tag=player] ["",{"text":"Bras:Prendre"}]
execute if score Action prog matches 9 if score logs prog matches 1 run tellraw @a[tag=player] ["",{"text":"Bras:Replié"}]
execute if score Action prog matches 10 if score logs prog matches 1 run tellraw @a[tag=player] ["",{"text":"Bras:Déplier"}]

## Foreuse ##
execute if score Action prog matches 11 if score logs prog matches 1 run tellraw @a[tag=player] ["",{"text":"Foreuse:Allumer"}]
execute if score Action prog matches 12 if score logs prog matches 1 run tellraw @a[tag=player] ["",{"text":"Foreuse:Analyser"}]
execute if score Action prog matches 13 if score logs prog matches 1 run tellraw @a[tag=player] ["",{"text":"Foreuse:Eteindre"}]
execute if score Action prog matches 14 if score logs prog matches 1 run tellraw @a[tag=player] ["",{"text":"Foreuse:Poser"}]
execute if score Action prog matches 15 if score logs prog matches 1 run tellraw @a[tag=player] ["",{"text":"Foreuse:Ramasser"}]
execute if score Action prog matches 30 if score logs prog matches 1 run tellraw @a[tag=player] ["",{"text":"Foreuse:Creuser"}]

## Scanner ##
execute if score Action prog matches 16 if score logs prog matches 1 run tellraw @a[tag=player] ["",{"text":"Scanner:Set0"}]
execute if score Action prog matches 16 as @e[tag=test_scan] at @s run tp @s ~ ~ ~ 0 0

execute if score Action prog matches 17 if score logs prog matches 1 run tellraw @a[tag=player] ["",{"text":"Scanner:Set90"}]
execute if score Action prog matches 17 as @e[tag=test_scan] at @s run tp @s ~ ~ ~ 90 0

execute if score Action prog matches 18 if score logs prog matches 1 run tellraw @a[tag=player] ["",{"text":"Scanner:Set180"}]
execute if score Action prog matches 18 as @e[tag=test_scan] at @s run tp @s ~ ~ ~ 180 0

execute if score Action prog matches 19 if score logs prog matches 1 run tellraw @a[tag=player] ["",{"text":"Scanner:Set270"}]
execute if score Action prog matches 19 as @e[tag=test_scan] at @s run tp @s ~ ~ ~ 270 0 

execute if score Action prog matches 20 if score logs prog matches 1 run tellraw @a[tag=player] ["",{"text":"Scanner:Allumer"}]
execute if score Action prog matches 21 if score logs prog matches 1 run tellraw @a[tag=player] ["",{"text":"Scanner:Eteindre"}]

execute if score Action prog matches 22 if score logs prog matches 1 run tellraw @a[tag=player] ["",{"text":"Scanner:Rotate90"}]
execute if score Action prog matches 22 as @e[tag=test_scan] at @s run tp @s ~ ~ ~ ~90 0

execute if score Action prog matches 23 if score logs prog matches 1 run tellraw @a[tag=player] ["",{"text":"Scanner:Rotate-90"}]
execute if score Action prog matches 23 as @e[tag=test_scan] at @s run tp @s ~ ~ ~ ~-90 0

execute if score Action prog matches 24 if score logs prog matches 1 run tellraw @a[tag=player] ["",{"text":"Scanner:Rotate180"}]
execute if score Action prog matches 24 as @e[tag=test_scan] at @s run tp @s ~ ~ ~ ~180 0

execute if score Action prog matches 25 if score logs prog matches 1 run tellraw @a[tag=player] ["",{"text":"Scanner:lancer le scan"}]

## Rover ##
execute if score Action prog matches 26 if score logs prog matches 1 run tellraw @a[tag=player] ["",{"text":"Rover:Rentrer les panneaux solaire"}]
execute if score Action prog matches 27 if score logs prog matches 1 run tellraw @a[tag=player] ["",{"text":"Rover:Sortir les panneaux solaire"}]
execute if score Action prog matches 28 if score logs prog matches 1 run tellraw @a[tag=player] ["",{"text":"Rover:Verifier les modules"}]

## Function ##
execute if score Action prog matches 29 if score FunctionType prog matches 1 if score logs prog matches 1 run tellraw @a[tag=player] ["",{"text":"Atterrissage"}]
execute if score Action prog matches 29 if score FunctionType prog matches 2 if score logs prog matches 1 run tellraw @a[tag=player] ["",{"text":"Scan 360"}]
execute if score Action prog matches 29 if score FunctionType prog matches 3 if score logs prog matches 1 run tellraw @a[tag=player] ["",{"text":"Contourner"}]
execute if score Action prog matches 29 if score FunctionType prog matches 4 if score logs prog matches 1 run tellraw @a[tag=player] ["",{"text":"Ramasser"}]
execute if score Action prog matches 29 if score FunctionType prog matches 5 if score logs prog matches 1 run tellraw @a[tag=player] ["",{"text":"Analyser"}]