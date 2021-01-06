function scripts:prog/inventory/clear/clear_inv
function scripts:tablette/give

tag @a[tag=player,tag=pc_on] remove pc_on
#scoreboard players set On prog -100
#scoreboard players set inv_display prog 0
#scoreboard players set prog_step prog 0