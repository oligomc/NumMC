## NumMC by Oligo
# cast to float
data modify entity @s FallDistance set from storage num:io input
data modify entity @s Rotation[0] set from entity @s FallDistance

# calculate sin and cos using local coords
execute positioned 0.0 0.0 0.0 rotated as @s rotated ~-90 ~ run tp @s ^ ^ ^1

# calculate tan using scoreboard division
execute store result score #ftan.cos nummc.math run data get entity @s Pos[0] 100000
execute store result score #ftan.sin nummc.math run data get entity @s Pos[2] 1000000000
scoreboard players operation #ftan.sin nummc.math /= #ftan.cos nummc.math
execute store result storage num:io output double 0.0001 run scoreboard players get #ftan.sin nummc.math
