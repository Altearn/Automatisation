execute if score bracket_si prog matches 1.. if score bracket_boucle prog matches 0 run scoreboard players set function prog 151
execute if score bracket_si prog matches 1.. if score bracket_boucle prog matches 1.. run scoreboard players set function prog 153

execute if score function prog matches 153 if score bracket_boucle prog < bracket_si prog run scoreboard players set function prog 150