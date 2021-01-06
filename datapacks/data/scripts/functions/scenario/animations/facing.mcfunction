# jack
execute as @e[tag=jack] at @s if entity @e[tag=granjean,distance=..4] run tp @s ~ ~ ~ facing entity @e[tag=granjean,limit=1]
execute as @e[tag=jack] at @s if entity @p[distance=..4] run tp @s ~ ~ ~ facing entity @p
execute as @e[tag=jack] at @s unless entity @p[distance=..4] unless entity @e[tag=granjean,distance=..4] run tp @s ~ ~ ~ 180 0

# pinson
execute as @e[tag=pinson,type=pillager] at @s if entity @e[tag=chatigny,distance=..4] run tp @s ~ ~ ~ facing entity @e[tag=chatigny,limit=1]
execute as @e[tag=pinson,type=pillager] at @s if entity @p[distance=..4] run tp @s ~ ~ ~ facing entity @p
execute as @e[tag=pinson,type=pillager] at @s unless entity @p[distance=..4] unless entity @e[tag=chatigny,distance=..4] run tp @s ~ ~ ~ -90 0

# laux
execute as @e[tag=laux,type=pillager] at @s if entity @e[tag=chatigny,distance=..4] run tp @s ~ ~ ~ facing entity @e[tag=chatigny,limit=1]
execute as @e[tag=laux,type=pillager] at @s if entity @p[distance=..4] run tp @s ~ ~ ~ facing entity @p
execute as @e[tag=laux,type=pillager] at @s unless entity @p[distance=..4] unless entity @e[tag=chatigny,distance=..4] run tp @s ~ ~ ~ 90 0

# gabriaux
execute as @e[tag=gabriaux,type=pillager] at @s if entity @e[tag=tachel,distance=..2] run tp @s ~ ~ ~ facing entity @e[tag=tachel,limit=1]
execute as @e[tag=gabriaux,type=pillager] at @s if entity @p[distance=..2] run tp @s ~ ~ ~ facing entity @p
execute as @e[tag=gabriaux,type=pillager] at @s unless entity @p[distance=..2] unless entity @e[tag=tachel,distance=..4] run tp @s ~ ~ ~ 0 0

# corbin
execute as @e[tag=corbin,type=pillager] at @s if entity @e[tag=tachel,distance=..2] run tp @s ~ ~ ~ facing entity @e[tag=tachel,limit=1]
execute as @e[tag=corbin,type=pillager] at @s if entity @p[distance=..2] run tp @s ~ ~ ~ facing entity @p
execute as @e[tag=corbin,type=pillager] at @s unless entity @p[distance=..2] unless entity @e[tag=tachel,distance=..4] run tp @s ~ ~ ~ 0 0



# steve
execute as @e[tag=steve] at @s if entity @p[distance=..4] run tp @s ~ ~ ~ facing entity @p
execute as @e[tag=steve] at @s unless entity @p[distance=..4] run tp @s ~ ~ ~ -90 0

# grillaud
execute as @e[tag=grillaud,type=pillager] at @s if entity @p[distance=..4] run tp @s ~ ~ ~ facing entity @p
execute as @e[tag=grillaud,type=pillager] at @s unless entity @p[distance=..4] run tp @s ~ ~ ~ 0 0

# duchesne
execute as @e[tag=duchesne,type=pillager] at @s if entity @p[distance=..4] run tp @s ~ ~ ~ facing entity @p
execute as @e[tag=duchesne,type=pillager] at @s unless entity @p[distance=..4] run tp @s ~ ~ ~ 180 0

# leblanc
execute as @e[tag=leblanc,type=pillager] at @s if entity @p[distance=..2] run tp @s ~ ~ ~ facing entity @p
execute as @e[tag=leblanc,type=pillager] at @s unless entity @p[distance=..2] run tp @s ~ ~ ~ -90 0
