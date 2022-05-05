## NumMC by Oligo
# store input
execute store result score #s nummc.math store result score #u nummc.math store result score #p nummc.math run data get storage num:io input 100000000

# calculate square root
function numop:sqrt/nest

# store output
execute store result storage num:io output double 0.00000000158113883008 run scoreboard players get #o nummc.math
