## NumMC by Oligo
# store input
execute store result score #s nummc.math store result score #u nummc.math store result score #p nummc.math run data get storage num:io input 1

# calculate square root
function numop:invsqrt/nest

# store output
execute store result storage num:io output double 0.000000000000316227766 run scoreboard players get #o nummc.math
