## NumMC by Oligo
# if j is 1 theta is -135 else theta is 45
execute if score #j nummc.math matches 1 run data modify storage num:io output set value [-0.70710678118d, -0.70710678118d]
execute unless score #j nummc.math matches 1 run data modify storage num:io output set value [0.70710678118d, 0.70710678118d]
