## NumMC by Oligo
# if j is 1 theta is 90 else theta is -90
execute if score #j nummc.math matches 1 run data modify storage num:io output set value [0.0d, 1.0d]
execute unless score #j nummc.math matches 1 run data modify storage num:io output set value [0.0d, -1.0d]
