## NumMC by Oligo
# cast to float
data modify entity @s FallDistance set from storage num:io input
data modify entity @s Rotation[0] set from entity @s FallDistance

# calculate cos using local coords
execute positioned 0.0 0.0 0.0 rotated as @s rotated ~-90 ~ run tp @s ^ ^ ^1
data modify storage num:io output set from entity @s Pos[0]
