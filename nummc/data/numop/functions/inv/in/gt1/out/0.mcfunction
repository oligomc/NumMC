## NumMC by Oligo
# store input
execute store result score #k nummc.math store result score #q nummc.math run data get storage num:io input 100000000

# calculate inverse
function numop:inv/nest

# store output
execute store result storage num:io output double 0.000000001 run scoreboard players get #o nummc.math