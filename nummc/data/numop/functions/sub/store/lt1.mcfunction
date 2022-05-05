## NumMC by Oligo
# scale
execute store result score #a nummc.math store result score #in nummc.math run data get storage num:io input[0] 1000000000
execute store result score #b nummc.math run data get storage num:io input[1] 1000000000

# set in to input of larger magnitude and sum
scoreboard players operation #a nummc.math /= #b nummc.math
execute if score #a nummc.math matches -1..0 run scoreboard players operation #in nummc.math = #b nummc.math
function numop:sub/bin/lt1/search/l0n0
