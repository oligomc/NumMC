## NumMC by Oligo
# if j is 1 theta is 180 else theta is 0
execute if score #j nummc.math matches 1 run data modify storage num:io output set value [-1.0d, 0.0d]
execute unless score #j nummc.math matches 1 run data modify storage num:io output set value [1.0d, 0.0d]
