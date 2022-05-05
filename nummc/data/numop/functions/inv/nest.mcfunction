## NumMC by Oligo
# setup
scoreboard players set #l nummc.math 1000000000
scoreboard players set #m nummc.math 2000000000

# initial guess
scoreboard players operation #k nummc.math /= #m4 nummc.const
execute store result score #k nummc.math run scoreboard players operation #l nummc.math /= #k nummc.math
execute if score #l nummc.math matches ..-1 run function numop:div/neg
execute store result score #p nummc.math run scoreboard players operation #l nummc.math *= #m4 nummc.const
function numop:mul/foil/main

# refine guess unless o matches +/-100000000 (perfect guess)
execute unless predicate numop:div_guess run function numop:inv/ref
scoreboard players operation #o nummc.math = #l nummc.math
