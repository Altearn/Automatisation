scoreboard players set On prog -1
scoreboard players set prog_step prog 3
scoreboard players set inv_display prog 3

data merge block 83 5 14 {Items:[]}
data merge block 83 5 15 {Items:[]}
data modify block 83 5 14 Items set from storage minecraft:chest_save Step3
data modify block 83 5 15 Items set from storage minecraft:chest_save Step13