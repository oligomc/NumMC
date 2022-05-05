## NumMC by Oligo
# reduce input to -90..90 degrees (keeping track of rotations)
scoreboard players set #j nummc.math 0
# Rotation[0] requires float, storing input in FallDistance first casts any numeric type to float
data modify entity @s FallDistance set from storage num:io input
data modify entity @s Rotation[0] set from entity @s FallDistance
execute if entity @s[y_rotation=90..269.9999] run function numop:unit/turn
execute rotated as @s run tp @s ~ ~ ~ ~ ~

# store y_rotation in scoreboard and convert to radians
execute store result score #k nummc.math run data get entity @s Rotation[0] 17453292.52

# if angle is already computed (theta = -90, -45, 0, 45 degrees) goto out/prec, else perform CORDIC
execute if predicate numop:unit_pre run function numop:unit/out/pre/main
execute unless predicate numop:unit_pre run function numop:unit/nest
