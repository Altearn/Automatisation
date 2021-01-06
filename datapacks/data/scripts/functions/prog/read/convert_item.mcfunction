execute if score Temp_Action prog matches 201 if score logs prog matches 1 run tellraw @a[tag=player] ["",{"text":"FIN SI","bold":false,"color":"gold"}]


## Mouvement ##
# Avancer
execute if score Temp_Action prog matches 1 run scoreboard players set Action prog 1
execute if score Temp_Action prog matches 2 run scoreboard players set Action prog 1
execute if score Temp_Action prog matches 1001 run scoreboard players set Action prog 1
execute if score Temp_Action prog matches 1002 run scoreboard players set Action prog 1
# Reculer
execute if score Temp_Action prog matches 3 run scoreboard players set Action prog 2
execute if score Temp_Action prog matches 4 run scoreboard players set Action prog 2
execute if score Temp_Action prog matches 1003 run scoreboard players set Action prog 2
execute if score Temp_Action prog matches 1004 run scoreboard players set Action prog 2
# Rotate Left
execute if score Temp_Action prog matches 5 run scoreboard players set Action prog 3
execute if score Temp_Action prog matches 6 run scoreboard players set Action prog 3
execute if score Temp_Action prog matches 1005 run scoreboard players set Action prog 3
execute if score Temp_Action prog matches 1006 run scoreboard players set Action prog 3
# Rotate Right
execute if score Temp_Action prog matches 7 run scoreboard players set Action prog 4
execute if score Temp_Action prog matches 8 run scoreboard players set Action prog 4
execute if score Temp_Action prog matches 1007 run scoreboard players set Action prog 4
execute if score Temp_Action prog matches 1008 run scoreboard players set Action prog 4
# Deplacement vers
execute if score Temp_Action prog matches 11 run scoreboard players set Action prog 5
execute if score Temp_Action prog matches 12 run scoreboard players set Action prog 5
execute if score Temp_Action prog matches 1011 run scoreboard players set Action prog 5
execute if score Temp_Action prog matches 1012 run scoreboard players set Action prog 5

## Bras ##
# Deplacement
execute if score Temp_Action prog matches 21 run scoreboard players set Action prog 6
execute if score Temp_Action prog matches 22 run scoreboard players set Action prog 6
execute if score Temp_Action prog matches 1021 run scoreboard players set Action prog 6
execute if score Temp_Action prog matches 1022 run scoreboard players set Action prog 6
# Lacher
execute if score Temp_Action prog matches 23 run scoreboard players set Action prog 7
execute if score Temp_Action prog matches 24 run scoreboard players set Action prog 7
execute if score Temp_Action prog matches 1023 run scoreboard players set Action prog 7
execute if score Temp_Action prog matches 1024 run scoreboard players set Action prog 7
# Prendre
execute if score Temp_Action prog matches 25 run scoreboard players set Action prog 8
execute if score Temp_Action prog matches 26 run scoreboard players set Action prog 8
execute if score Temp_Action prog matches 1025 run scoreboard players set Action prog 8
execute if score Temp_Action prog matches 1026 run scoreboard players set Action prog 8
# Rentrer
execute if score Temp_Action prog matches 27 run scoreboard players set Action prog 9
execute if score Temp_Action prog matches 28 run scoreboard players set Action prog 9
execute if score Temp_Action prog matches 1027 run scoreboard players set Action prog 9
execute if score Temp_Action prog matches 1028 run scoreboard players set Action prog 9
# Sortir
execute if score Temp_Action prog matches 29 run scoreboard players set Action prog 10
execute if score Temp_Action prog matches 30 run scoreboard players set Action prog 10
execute if score Temp_Action prog matches 1029 run scoreboard players set Action prog 10
execute if score Temp_Action prog matches 1030 run scoreboard players set Action prog 10


## Foreuse ##
# Allumer
execute if score Temp_Action prog matches 41 run scoreboard players set Action prog 11
execute if score Temp_Action prog matches 42 run scoreboard players set Action prog 11
execute if score Temp_Action prog matches 1041 run scoreboard players set Action prog 11
execute if score Temp_Action prog matches 1042 run scoreboard players set Action prog 11
# Analyser
execute if score Temp_Action prog matches 43 run scoreboard players set Action prog 12
execute if score Temp_Action prog matches 44 run scoreboard players set Action prog 12
execute if score Temp_Action prog matches 1043 run scoreboard players set Action prog 12
execute if score Temp_Action prog matches 1044 run scoreboard players set Action prog 12
# Eteindre
execute if score Temp_Action prog matches 45 run scoreboard players set Action prog 13
execute if score Temp_Action prog matches 46 run scoreboard players set Action prog 13
execute if score Temp_Action prog matches 1045 run scoreboard players set Action prog 13
execute if score Temp_Action prog matches 1046 run scoreboard players set Action prog 13
# Poser
execute if score Temp_Action prog matches 47 run scoreboard players set Action prog 14
execute if score Temp_Action prog matches 48 run scoreboard players set Action prog 14
execute if score Temp_Action prog matches 1047 run scoreboard players set Action prog 14
execute if score Temp_Action prog matches 1048 run scoreboard players set Action prog 14
# Ramasser
execute if score Temp_Action prog matches 49 run scoreboard players set Action prog 15
execute if score Temp_Action prog matches 50 run scoreboard players set Action prog 15
execute if score Temp_Action prog matches 1049 run scoreboard players set Action prog 15
execute if score Temp_Action prog matches 1050 run scoreboard players set Action prog 15


## Scanner ## 
# 0
execute if score Temp_Action prog matches 61 run scoreboard players set Action prog 16
execute if score Temp_Action prog matches 62 run scoreboard players set Action prog 16
execute if score Temp_Action prog matches 61 run scoreboard players set Action prog 16
execute if score Temp_Action prog matches 1062 run scoreboard players set Action prog 16
# 90
execute if score Temp_Action prog matches 63 run scoreboard players set Action prog 17
execute if score Temp_Action prog matches 64 run scoreboard players set Action prog 17
execute if score Temp_Action prog matches 63 run scoreboard players set Action prog 17
execute if score Temp_Action prog matches 1064 run scoreboard players set Action prog 17
# 180
execute if score Temp_Action prog matches 65 run scoreboard players set Action prog 18
execute if score Temp_Action prog matches 66 run scoreboard players set Action prog 18
execute if score Temp_Action prog matches 1065 run scoreboard players set Action prog 18
execute if score Temp_Action prog matches 1066 run scoreboard players set Action prog 18
# 270
execute if score Temp_Action prog matches 67 run scoreboard players set Action prog 19
execute if score Temp_Action prog matches 68 run scoreboard players set Action prog 19
execute if score Temp_Action prog matches 1067 run scoreboard players set Action prog 19
execute if score Temp_Action prog matches 1068 run scoreboard players set Action prog 19
# Allumer
execute if score Temp_Action prog matches 69 run scoreboard players set Action prog 20
execute if score Temp_Action prog matches 70 run scoreboard players set Action prog 20
execute if score Temp_Action prog matches 1069 run scoreboard players set Action prog 20
execute if score Temp_Action prog matches 1070 run scoreboard players set Action prog 20
# Eteindre
execute if score Temp_Action prog matches 71 run scoreboard players set Action prog 21
execute if score Temp_Action prog matches 72 run scoreboard players set Action prog 21
execute if score Temp_Action prog matches 1071 run scoreboard players set Action prog 21
execute if score Temp_Action prog matches 1072 run scoreboard players set Action prog 21
# Rotate90
execute if score Temp_Action prog matches 73 run scoreboard players set Action prog 22
execute if score Temp_Action prog matches 74 run scoreboard players set Action prog 22
execute if score Temp_Action prog matches 1073 run scoreboard players set Action prog 22
execute if score Temp_Action prog matches 1074 run scoreboard players set Action prog 22
# Rotate-90
execute if score Temp_Action prog matches 75 run scoreboard players set Action prog 23
execute if score Temp_Action prog matches 76 run scoreboard players set Action prog 23
execute if score Temp_Action prog matches 1075 run scoreboard players set Action prog 23
execute if score Temp_Action prog matches 1076 run scoreboard players set Action prog 23
# Rotate180
execute if score Temp_Action prog matches 77 run scoreboard players set Action prog 24
execute if score Temp_Action prog matches 78 run scoreboard players set Action prog 24
execute if score Temp_Action prog matches 1077 run scoreboard players set Action prog 24
execute if score Temp_Action prog matches 1078 run scoreboard players set Action prog 24
# Start
execute if score Temp_Action prog matches 79 run scoreboard players set Action prog 25
execute if score Temp_Action prog matches 80 run scoreboard players set Action prog 25
execute if score Temp_Action prog matches 1079 run scoreboard players set Action prog 25
execute if score Temp_Action prog matches 1080 run scoreboard players set Action prog 25


##Rover##
# Rentrer panneau
execute if score Temp_Action prog matches 91 run scoreboard players set Action prog 26
execute if score Temp_Action prog matches 92 run scoreboard players set Action prog 26
execute if score Temp_Action prog matches 1091 run scoreboard players set Action prog 26
execute if score Temp_Action prog matches 1092 run scoreboard players set Action prog 26
# Sortir panneau
execute if score Temp_Action prog matches 93 run scoreboard players set Action prog 27
execute if score Temp_Action prog matches 94 run scoreboard players set Action prog 27
execute if score Temp_Action prog matches 1093 run scoreboard players set Action prog 27
execute if score Temp_Action prog matches 1094 run scoreboard players set Action prog 27
# Verifier module
execute if score Temp_Action prog matches 95 run scoreboard players set Action prog 28
execute if score Temp_Action prog matches 96 run scoreboard players set Action prog 28
execute if score Temp_Action prog matches 1095 run scoreboard players set Action prog 28
execute if score Temp_Action prog matches 1096 run scoreboard players set Action prog 28


## Function ##
execute if score Temp_Action prog matches 3000 run scoreboard players set Action prog 29
execute if score Temp_Action prog matches 3004 run scoreboard players set Action prog 29
execute if score Temp_Action prog matches 3005 run scoreboard players set Action prog 29
execute if score Temp_Action prog matches 3006 run scoreboard players set Action prog 29

# Foreuse - Creuser
execute if score Temp_Action prog matches 51 run scoreboard players set Action prog 30
execute if score Temp_Action prog matches 52 run scoreboard players set Action prog 30
execute if score Temp_Action prog matches 53 run scoreboard players set Action prog 30
execute if score Temp_Action prog matches 54 run scoreboard players set Action prog 30

# Atterrissage
# Scan 360
# Esquiver
# Ramasser
# Analyser