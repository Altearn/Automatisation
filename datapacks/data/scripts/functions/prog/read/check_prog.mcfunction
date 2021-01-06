### Fonction Atterrissage
## Set Score
execute if score prog_step prog matches 2 unless score check_modules complete_task = check_modules complete_task run scoreboard players set check_modules complete_task 0
execute if score prog_step prog matches 2 unless score Movements complete_task = Movements complete_task run scoreboard players set Movements complete_task 0
# Step 1
execute if score prog_step prog matches 2 if score check_modules complete_task matches 0 if score Action prog matches 28 run scoreboard players set check_modules complete_task 1
execute if score prog_step prog matches 2 if score Action prog matches 27 run scoreboard players add solarpanel complete_task 1
execute if score prog_step prog matches 2 if score Action prog matches 27 run scoreboard players set check_modules complete_task 2
execute if score prog_step prog matches 2 if score Action prog matches 26 if score solarpanel complete_task matches 1.. run scoreboard players remove solarpanel complete_task 1
# Step 2
execute if score prog_step prog matches 2 if score check_modules complete_task matches 2.. if score Action prog matches 1 run scoreboard players add Movements complete_task 1
execute if score prog_step prog matches 2 if score check_modules complete_task matches 2.. if score Action prog matches 2 run scoreboard players add Movements complete_task 1
execute if score prog_step prog matches 2 if score check_modules complete_task matches 2.. if score Action prog matches 3 run scoreboard players add Movements complete_task 1
execute if score prog_step prog matches 2 if score check_modules complete_task matches 2.. if score Action prog matches 4 run scoreboard players add Movements complete_task 1



### Fonction Scan 360
execute if score prog_step prog matches 3 unless entity @e[tag=test_scan] run summon minecraft:armor_stand 86 4 17 {Tags:["test_scan","test"],Silent:1,NoGravity:1,Invulnerable:1,Rotation:[0f]}
## Set Score
execute if score prog_step prog matches 3 unless score ScanComplete complete_task = ScanComplete complete_task run scoreboard players set ScanComplete complete_task 0
execute if score prog_step prog matches 3 unless score ScanPower complete_task = ScanPower complete_task run scoreboard players set ScanPower complete_task 0
# Step 1
execute if score prog_step prog matches 3 if score ScanPower complete_task matches 0 if score Action prog matches 20 run scoreboard players set Check_ScanPower complete_task 1
execute if score prog_step prog matches 3 if score ScanPower complete_task matches 0 if score Action prog matches 20 run scoreboard players add ScanPower complete_task 1
# Step 2
# Check all Rotation for scan
execute if score prog_step prog matches 3 if score ScanPower complete_task matches 1.. if entity @e[tag=test_scan,y_rotation=0] if score Action prog matches 25 run scoreboard players set LaunchScan0 complete_task 1
execute if score prog_step prog matches 3 if score ScanPower complete_task matches 1.. if entity @e[tag=test_scan,y_rotation=360] if score Action prog matches 25 run scoreboard players set LaunchScan0 complete_task 1
execute if score prog_step prog matches 3 if score ScanPower complete_task matches 1.. if entity @e[tag=test_scan,y_rotation=90] if score Action prog matches 25 run scoreboard players set LaunchScan90 complete_task 1
execute if score prog_step prog matches 3 if score ScanPower complete_task matches 1.. if entity @e[tag=test_scan,y_rotation=-270] if score Action prog matches 25 run scoreboard players set LaunchScan90 complete_task 1
execute if score prog_step prog matches 3 if score ScanPower complete_task matches 1.. if entity @e[tag=test_scan,y_rotation=180] if score Action prog matches 25 run scoreboard players set LaunchScan180 complete_task 1
execute if score prog_step prog matches 3 if score ScanPower complete_task matches 1.. if entity @e[tag=test_scan,y_rotation=-180] if score Action prog matches 25 run scoreboard players set LaunchScan180 complete_task 1
execute if score prog_step prog matches 3 if score ScanPower complete_task matches 1.. if entity @e[tag=test_scan,y_rotation=270] if score Action prog matches 25 run scoreboard players set LaunchScan270 complete_task 1
execute if score prog_step prog matches 3 if score ScanPower complete_task matches 1.. if entity @e[tag=test_scan,y_rotation=-90] if score Action prog matches 25 run scoreboard players set LaunchScan270 complete_task 1
# Add all score
execute if score prog_step prog matches 3 if score ScanPower complete_task matches 1.. if score ScanComplete complete_task matches ..3 run scoreboard players operation ScanComplete complete_task += LaunchScan0 complete_task
execute if score prog_step prog matches 3 if score ScanPower complete_task matches 1.. if score ScanComplete complete_task matches ..3 run scoreboard players operation ScanComplete complete_task += LaunchScan90 complete_task
execute if score prog_step prog matches 3 if score ScanPower complete_task matches 1.. if score ScanComplete complete_task matches ..3 run scoreboard players operation ScanComplete complete_task += LaunchScan180 complete_task
execute if score prog_step prog matches 3 if score ScanPower complete_task matches 1.. if score ScanComplete complete_task matches ..3 run scoreboard players operation ScanComplete complete_task += LaunchScan270 complete_task
execute if score prog_step prog matches 3 if score ScanComplete complete_task matches ..3 run scoreboard players set ScanComplete complete_task 0
# Step 3
execute if score prog_step prog matches 3 if score ScanPower complete_task matches 1.. if score Action prog matches 21 run scoreboard players remove ScanPower complete_task 1



### Fonction Ramasser
## Set Score
execute if score prog_step prog matches 5 unless score Pince complete_task = Pince complete_task run scoreboard players set Pince complete_task 0
execute if score prog_step prog matches 5 unless score Bras complete_task = Bras complete_task run scoreboard players set Bras complete_task 0
execute if score prog_step prog matches 5 unless score BrasComplete complete_task = BrasComplete complete_task run scoreboard players set BrasComplete complete_task 0
# Pince
execute if score prog_step prog matches 5 if score Action prog matches 7 run scoreboard players add Pince complete_task 1
execute if score prog_step prog matches 5 if score Action prog matches 8 run scoreboard players remove Pince complete_task 1
execute if score prog_step prog matches 5 if score Action prog matches 9 run scoreboard players remove Pince complete_task 1
# Bras
execute if score prog_step prog matches 5 if score Action prog matches 10 run scoreboard players add Bras complete_task 1
execute if score prog_step prog matches 5 if score Action prog matches 9 run scoreboard players remove Bras complete_task 1
# All Step
execute if score prog_step prog matches 5 if score BrasComplete complete_task matches 0 if score Action prog matches 10 run scoreboard players set BrasComplete complete_task 1
execute if score prog_step prog matches 5 if score BrasComplete complete_task matches 1 if score Action prog matches 6 if score BrasType prog matches 1 run scoreboard players set BrasComplete complete_task 2
execute if score prog_step prog matches 5 if score BrasComplete complete_task matches 2 if score Action prog matches 7 run scoreboard players set BrasComplete complete_task 3
execute if score prog_step prog matches 5 if score BrasComplete complete_task matches 3 if score Action prog matches 8 run scoreboard players set BrasComplete complete_task 4
execute if score prog_step prog matches 5 if score BrasComplete complete_task matches 4 if score Action prog matches 6 if score BrasType prog matches 2 run scoreboard players set BrasComplete complete_task 5
execute if score prog_step prog matches 5 if score BrasComplete complete_task matches 5 if score Action prog matches 7 run scoreboard players set BrasComplete complete_task 6
execute if score prog_step prog matches 5 if score BrasComplete complete_task matches 6 if score Action prog matches 9 run scoreboard players set BrasComplete complete_task 7




### Fonction Analyser
## Set Score
execute if score prog_step prog matches 6 unless score ForeuseComplete complete_task = ForeuseComplete complete_task run scoreboard players set ForeuseComplete complete_task 0
execute if score prog_step prog matches 6 unless score ForeuseInit complete_task = ForeuseInit complete_task run scoreboard players set ForeuseInit complete_task 0
execute if score prog_step prog matches 6 unless score ForeusePower complete_task = ForeusePower complete_task run scoreboard players set ForeusePower complete_task 0
# Step 1
execute if score prog_step prog matches 6 if score ForeuseInit complete_task matches 0 if score Action prog matches 14 run scoreboard players add ForeuseInit complete_task 1
execute if score prog_step prog matches 6 if score ForeuseInit complete_task matches 1.. if score ForeuseComplete complete_task matches 0 run scoreboard players set ForeuseComplete complete_task 1
execute if score prog_step prog matches 6 if score ForeuseInit complete_task matches 1.. if score Action prog matches 15 run scoreboard players remove ForeuseInit complete_task 1
# Step 2
execute if score prog_step prog matches 6 if score ForeuseInit complete_task matches 1.. if score ForeusePower complete_task matches 0 if score Action prog matches 11 run scoreboard players add ForeusePower complete_task 1
execute if score prog_step prog matches 6 if score ForeuseInit complete_task matches 1.. if score ForeusePower complete_task matches 1.. if score ForeuseComplete complete_task matches 1 run scoreboard players set ForeuseComplete complete_task 2
execute if score prog_step prog matches 6 if score ForeuseInit complete_task matches 0.. if score ForeusePower complete_task matches 1.. if score Action prog matches 13 run scoreboard players remove ForeusePower complete_task 1
# Step 3
execute if score prog_step prog matches 6 if score ForeuseInit complete_task matches 1.. if score ForeusePower complete_task matches 1.. if score Action prog matches 30 if score ForeuseComplete complete_task matches 2 run scoreboard players set ForeuseComplete complete_task 3
execute if score prog_step prog matches 6 if score ForeuseComplete complete_task matches 3 if score Temp_Action prog matches 101 if score IfType prog matches 6 run scoreboard players set ForeuseComplete complete_task 4
execute if score prog_step prog matches 6 if score ForeuseComplete complete_task matches 4 if score ForeuseInit complete_task matches 1.. if score Action prog matches 12 run scoreboard players set ForeuseComplete complete_task 5



### Fonction Aller a
## Set Score
execute if score prog_step prog matches 7 unless score Goto_Complete complete_task = Goto_Complete complete_task run scoreboard players set Goto_Complete complete_task 0
execute if score prog_step prog matches 7 unless score Goto_OK complete_task = Goto_OK complete_task run scoreboard players set Goto_OK complete_task 0
execute if score prog_step prog matches 7 unless score Loop complete_task = Loop complete_task run scoreboard players set Loop complete_task 0
execute if score prog_step prog matches 7 unless score dodge complete_task = dodge complete_task run scoreboard players set dodge complete_task 0
execute if score prog_step prog matches 7 unless score goto complete_task = goto complete_task run scoreboard players set goto complete_task 0
execute if score prog_step prog matches 7 unless score Destination complete_task = Destination complete_task run scoreboard players set Destination complete_task 0
execute if score prog_step prog matches 7 unless score check_if complete_task = check_if complete_task run scoreboard players set check_if complete_task 0
# Step 1
execute if score prog_step prog matches 7 if score Loop complete_task matches 0 if score Temp_Action prog matches 301 run scoreboard players set Loop complete_task 1

execute if score prog_step prog matches 7 if score If complete_task matches 0 if score Temp_Action prog matches 101 if score IfType prog matches 5 run scoreboard players set If complete_task 1
execute if score prog_step prog matches 7 if score check_if complete_task matches 0 if score Temp_Action prog matches 101 if score IfType prog matches 5 run scoreboard players set check_if complete_task 1
execute if score prog_step prog matches 7 if score check_if complete_task matches 1 if score Temp_Action prog matches 201 run scoreboard players set check_if complete_task 0
execute if score prog_step prog matches 7 if score check_if complete_task matches 1 if score Temp_Action prog matches 2012..2013 run scoreboard players set check_if complete_task 0

execute if score prog_step prog matches 7 if score dodge complete_task matches 0 if score Action prog matches 29 if score FunctionType prog matches 3 run scoreboard players set dodge complete_task 1
execute if score prog_step prog matches 7 if score goto complete_task matches 0 if score Action prog matches 5 if score DeplacementType prog matches 6 run scoreboard players set goto complete_task 1
execute if score prog_step prog matches 7 if score Destination complete_task matches 0 if score Temp_Action prog matches 101 if score IfType prog matches 3 run scoreboard players set Destination complete_task 1

execute if score prog_step prog matches 7 if score Goto_OK complete_task matches ..4 run scoreboard players operation Goto_OK complete_task += Loop complete_task
execute if score prog_step prog matches 7 if score Goto_OK complete_task matches ..4 run scoreboard players operation Goto_OK complete_task += If complete_task
execute if score prog_step prog matches 7 if score Goto_OK complete_task matches ..4 run scoreboard players operation Goto_OK complete_task += dodge complete_task
execute if score prog_step prog matches 7 if score Goto_OK complete_task matches ..4 run scoreboard players operation Goto_OK complete_task += goto complete_task
execute if score prog_step prog matches 7 if score Goto_OK complete_task matches ..4 run scoreboard players operation Goto_OK complete_task += Destination complete_task
execute if score prog_step prog matches 7 if score Goto_OK complete_task matches ..4 run scoreboard players set Goto_OK complete_task 0
# Step 2
execute if score prog_step prog matches 7 if score Goto_Complete complete_task matches 0 if score Temp_Action prog matches 301 run scoreboard players set Goto_Complete complete_task 1

execute if score prog_step prog matches 7 if score Goto_Complete complete_task matches 1 if score Temp_Action prog matches 101 if score IfType prog matches 5 run scoreboard players set Goto_Complete complete_task 2
execute if score prog_step prog matches 7 if score Goto_Complete complete_task matches 2 if score Action prog matches 29 if score FunctionType prog matches 3 run scoreboard players set Goto_Complete complete_task 3
execute if score prog_step prog matches 7 if score Goto_Complete complete_task matches 3 if score Action prog matches 5 if score DeplacementType prog matches 6 if score check_if complete_task matches 1 run scoreboard players set Goto_Complete complete_task 4

execute if score prog_step prog matches 7 if score Goto_Complete complete_task matches 4 if score Temp_Action prog matches 101 if score IfType prog matches 3 run scoreboard players set Goto_Complete complete_task 5
execute if score prog_step prog matches 7 if score Goto_Complete complete_task matches 5 if score Temp_Action prog matches 2012 run scoreboard players set Goto_Complete complete_task 6
execute if score prog_step prog matches 7 if score Goto_Complete complete_task matches 5 if score Temp_Action prog matches 2013 run scoreboard players set Goto_Complete complete_task 6
execute if score prog_step prog matches 7 if score Goto_Complete complete_task matches 5 if score Temp_Action prog matches 201 run scoreboard players set Goto_Complete complete_task 4



### Fonction MAIN
## Set Score
execute if score prog_step prog matches 8 unless score MainComplete complete_task = MainComplete complete_task store result score Deplacement_1 complete_task store result score Deplacement_2 complete_task store result score Deplacement_3 complete_task store result score CheckDeplacement complete_task run scoreboard players set MainComplete complete_task 0
execute if score prog_step prog matches 8 unless score MainFinal complete_task = MainFinal complete_task run scoreboard players set MainFinal complete_task 0
execute if score prog_step prog matches 8 unless score Loop complete_task = Loop complete_task run scoreboard players set Loop complete_task 0
execute if score prog_step prog matches 8 unless score If complete_task = If complete_task run scoreboard players set If complete_task 0
execute if score prog_step prog matches 8 unless score EndIf complete_task = EndIf complete_task run scoreboard players set EndIf complete_task 0
execute if score prog_step prog matches 8 unless score Else complete_task = Else complete_task run scoreboard players set Else complete_task 0

## Set Score pour si, sinon et fin
execute if score prog_step prog matches 8 if score Temp_Action prog matches 151 run scoreboard players set Else complete_task 1
execute if score prog_step prog matches 8 if score Temp_Action prog matches 101 run scoreboard players set If complete_task 1
execute if score prog_step prog matches 8 if score Temp_Action prog matches 101 if score IfType prog matches 1 run scoreboard players set SolDur complete_task 1
execute if score prog_step prog matches 8 if score Temp_Action prog matches 101 if score IfType prog matches 2 run scoreboard players set SolMou complete_task 1
execute if score prog_step prog matches 8 if score Temp_Action prog matches 201 run scoreboard players set EndIf complete_task 1
execute if score prog_step prog matches 8 if score EndIf complete_task matches 1 run scoreboard players set If complete_task 0
execute if score prog_step prog matches 8 if score EndIf complete_task matches 1 run scoreboard players set SolDur complete_task 0
execute if score prog_step prog matches 8 if score EndIf complete_task matches 1 run scoreboard players set SolMou complete_task 0
execute if score prog_step prog matches 8 if score EndIf complete_task matches 1 run scoreboard players set Else complete_task 0
execute if score prog_step prog matches 8 if score EndIf complete_task matches 1 run scoreboard players set EndIf complete_task 0

## add score pourle type de fonction
execute if score prog_step prog matches 8 if score Action prog matches 29 run scoreboard players set SpecimenType complete_task 0
execute if score prog_step prog matches 8 if score Action prog matches 29 if score FunctionType prog matches 4 run scoreboard players set SpecimenType complete_task 4
execute if score prog_step prog matches 8 if score Action prog matches 29 if score FunctionType prog matches 5 run scoreboard players set SpecimenType complete_task 5

## Check si atterissage
execute if score prog_step prog matches 8 if score MainComplete complete_task matches 0 if score Action prog matches 29 if score FunctionType prog matches 1 run scoreboard players set MainComplete complete_task 1
## Check si scan360
execute if score prog_step prog matches 8 if score MainComplete complete_task matches 1 if score Action prog matches 29 if score FunctionType prog matches 2 run scoreboard players set MainComplete complete_task 2


## Check si aller a zone d'analyse + analyse ou ramassage
execute if score prog_step prog matches 8 if score MainComplete complete_task matches 2 if score If complete_task matches 0 if score Action prog matches 5 if score DeplacementType prog matches 2..4 run scoreboard players operation CheckDeplacement complete_task += DeplacementType prog
execute if score prog_step prog matches 8 if score MainComplete complete_task matches 2 if score If complete_task matches 0 if score Action prog matches 5 if score DeplacementType prog matches 2..4 run scoreboard players set MainComplete complete_task 3

execute if score prog_step prog matches 8 if score MainComplete complete_task matches 3 if score SolDur complete_task matches 1 if score SpecimenType complete_task matches 4 if score Else complete_task matches 0 run scoreboard players set MainComplete complete_task 4
execute if score prog_step prog matches 8 if score MainComplete complete_task matches 3 if score SolMou complete_task matches 1 if score SpecimenType complete_task matches 5 if score Else complete_task matches 0 run scoreboard players set MainComplete complete_task 4
execute if score prog_step prog matches 8 if score MainComplete complete_task matches 3 if score SolDur complete_task matches 1 if score SpecimenType complete_task matches 5 if score Else complete_task matches 1 run scoreboard players set MainComplete complete_task 4
execute if score prog_step prog matches 8 if score MainComplete complete_task matches 3 if score SolMou complete_task matches 1 if score SpecimenType complete_task matches 4 if score Else complete_task matches 1 run scoreboard players set MainComplete complete_task 4


## Check si aller a zone d'analyse + analyse ou ramassage
execute if score prog_step prog matches 8 if score MainComplete complete_task matches 4 if score If complete_task matches 0 if score Action prog matches 5 if score DeplacementType prog matches 2..4 run scoreboard players operation CheckDeplacement complete_task += DeplacementType prog
execute if score prog_step prog matches 8 if score MainComplete complete_task matches 4 if score If complete_task matches 0 if score Action prog matches 5 if score DeplacementType prog matches 2..4 run scoreboard players set MainComplete complete_task 5

execute if score prog_step prog matches 8 if score MainComplete complete_task matches 5 if score SolDur complete_task matches 1 if score SpecimenType complete_task matches 4 if score Else complete_task matches 0 run scoreboard players set MainComplete complete_task 6
execute if score prog_step prog matches 8 if score MainComplete complete_task matches 5 if score SolMou complete_task matches 1 if score SpecimenType complete_task matches 5 if score Else complete_task matches 0 run scoreboard players set MainComplete complete_task 6
execute if score prog_step prog matches 8 if score MainComplete complete_task matches 5 if score SolDur complete_task matches 1 if score SpecimenType complete_task matches 5 if score Else complete_task matches 1 run scoreboard players set MainComplete complete_task 6
execute if score prog_step prog matches 8 if score MainComplete complete_task matches 5 if score SolMou complete_task matches 1 if score SpecimenType complete_task matches 4 if score Else complete_task matches 1 run scoreboard players set MainComplete complete_task 6


## Check si aller a zone d'analyse + analyse ou ramassage
execute if score prog_step prog matches 8 if score MainComplete complete_task matches 6 if score If complete_task matches 0 if score Action prog matches 5 if score DeplacementType prog matches 2..4 run scoreboard players operation CheckDeplacement complete_task += DeplacementType prog
execute if score prog_step prog matches 8 if score MainComplete complete_task matches 6 if score If complete_task matches 0 if score Action prog matches 5 if score DeplacementType prog matches 2..4 run scoreboard players set MainComplete complete_task 7

execute if score prog_step prog matches 8 if score MainComplete complete_task matches 7 if score SolDur complete_task matches 1 if score SpecimenType complete_task matches 4 if score Else complete_task matches 0 run scoreboard players set MainComplete complete_task 8
execute if score prog_step prog matches 8 if score MainComplete complete_task matches 7 if score SolMou complete_task matches 1 if score SpecimenType complete_task matches 5 if score Else complete_task matches 0 run scoreboard players set MainComplete complete_task 8
execute if score prog_step prog matches 8 if score MainComplete complete_task matches 7 if score SolDur complete_task matches 1 if score SpecimenType complete_task matches 5 if score Else complete_task matches 1 run scoreboard players set MainComplete complete_task 8
execute if score prog_step prog matches 8 if score MainComplete complete_task matches 7 if score SolMou complete_task matches 1 if score SpecimenType complete_task matches 4 if score Else complete_task matches 1 run scoreboard players set MainComplete complete_task 8

execute if score prog_step prog matches 8 run scoreboard players set SpecimenType complete_task 0

## Check si aller a zone d'extraction
execute if score prog_step prog matches 8 if score MainComplete complete_task matches 8 if score Action prog matches 5 if score DeplacementType prog matches 1 run scoreboard players set MainComplete complete_task 9