#prog/inventoty/main
execute if entity @p[tag=!pc_on] run function scripts:prog/inventory/clear/clear_inv
execute if entity @p[tag=!pc_on] run function scripts:prog/inventory/reset_open
execute if entity @p[tag=!pc_on] run kill @e[tag=arrow]
tag @a[tag=player,tag=!pc_on] add pc_on

execute unless score tuto_prog prog = tuto_prog prog run scoreboard players set tuto_prog prog 0

execute if score On prog matches 1 run function scripts:prog/inventory/storage/menu
execute if score tuto_prog prog matches 0 if score On prog matches 2 run function scripts:prog/inventory/storage/tuto
execute if score tuto_prog prog matches 1 if score On prog matches 2 run function scripts:prog/inventory/storage/atterrissage
execute if score On prog matches 3 run function scripts:prog/inventory/storage/scan
execute if score On prog matches 4 run function scripts:prog/inventory/storage/esquive
execute if score On prog matches 5 run function scripts:prog/inventory/storage/ramasse
execute if score On prog matches 6 run function scripts:prog/inventory/storage/annalyse
execute if score On prog matches 7 run function scripts:prog/inventory/storage/aller
execute if score On prog matches 8 run function scripts:prog/inventory/storage/main

execute if score inv_display prog matches 1 run function scripts:prog/inventory/inv/menu
execute if score inv_display prog matches 2 run function scripts:prog/inventory/inv/atterrissage
execute if score inv_display prog matches 3 run function scripts:prog/inventory/inv/scan
execute if score inv_display prog matches 4 run function scripts:prog/inventory/inv/esquive
execute if score inv_display prog matches 5 run function scripts:prog/inventory/inv/ramasse
execute if score inv_display prog matches 6 run function scripts:prog/inventory/inv/annalyse
execute if score inv_display prog matches 7 run function scripts:prog/inventory/inv/aller
execute if score inv_display prog matches 8 run function scripts:prog/inventory/inv/main
execute if score inv_display prog matches 9 run function scripts:prog/inventory/inv/tuto

execute if score inv_display prog matches 101 run function scripts:prog/inventory/inv/folder_bras
execute if score inv_display prog matches 102 run function scripts:prog/inventory/inv/folder_deplacement
execute if score inv_display prog matches 103 run function scripts:prog/inventory/inv/folder_function
execute if score inv_display prog matches 104 run function scripts:prog/inventory/inv/folder_rover
execute if score inv_display prog matches 105 run function scripts:prog/inventory/inv/folder_scanner
execute if score inv_display prog matches 106 run function scripts:prog/inventory/inv/folder_si
execute if score inv_display prog matches 107 run function scripts:prog/inventory/inv/folder_foreuse

execute if score inv_display prog matches 200 run function scripts:prog/inventory/inv/valider
execute if score inv_display prog matches 201 run function scripts:prog/inventory/inv/quitter

execute if score inv_display prog matches -200 run function scripts:prog/inventory/check/valider
execute if score inv_display prog matches -201 run function scripts:prog/inventory/check/quitter

execute if score prog_step prog matches 1 run function scripts:prog/inventory/check/menu

execute if score inv_display prog matches -2 run function scripts:prog/inventory/check/atterrissage
execute if score inv_display prog matches -3 run function scripts:prog/inventory/check/scan
execute if score inv_display prog matches -4 run function scripts:prog/inventory/check/esquive
execute if score inv_display prog matches -5 run function scripts:prog/inventory/check/ramasse
execute if score inv_display prog matches -6 run function scripts:prog/inventory/check/annalyse
execute if score inv_display prog matches -7 run function scripts:prog/inventory/check/aller
execute if score inv_display prog matches -8 run function scripts:prog/inventory/check/main

execute if score inv_display prog matches -101 run function scripts:prog/inventory/check/folder_bras
execute if score inv_display prog matches -102 run function scripts:prog/inventory/check/folder_deplacement
execute if score inv_display prog matches -103 run function scripts:prog/inventory/check/folder_function
execute if score inv_display prog matches -104 run function scripts:prog/inventory/check/folder_rover
execute if score inv_display prog matches -105 run function scripts:prog/inventory/check/folder_scanner
execute if score inv_display prog matches -106 run function scripts:prog/inventory/check/folder_si
execute if score inv_display prog matches -107 run function scripts:prog/inventory/check/folder_foreuse