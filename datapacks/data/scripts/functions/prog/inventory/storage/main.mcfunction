#storage

scoreboard players set On prog -8
scoreboard players set prog_step prog 8
scoreboard players set inv_display prog 8

data merge block 83 5 14 {Items:[]}
data merge block 83 5 15 {Items:[]}
data modify block 83 5 14 Items set from storage minecraft:chest_save Step8
data modify block 83 5 15 Items set from storage minecraft:chest_save Step18
