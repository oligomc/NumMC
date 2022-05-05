## NumMC by Oligo
# set in to input of larger magnitude and sum
scoreboard players operation #a nummc.math /= #b nummc.math
execute if score #a nummc.math matches -1..0 run scoreboard players operation #in nummc.math = #b nummc.math
function numop:add/bin/gt1/search/l0n0
