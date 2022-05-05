## NumMC by Oligo
# setup
scoreboard players set #l nummc.math 1000000000
scoreboard players set #m nummc.math 2000000000
scoreboard players operation #r nummc.math = #p nummc.math

# initial guess
scoreboard players operation #k nummc.math = #q nummc.math
scoreboard players operation #k nummc.math /= #m4 nummc.const
scoreboard players operation #l nummc.math /= #k nummc.math
execute store result score #p nummc.math run scoreboard players operation #l nummc.math *= #m4 nummc.const
function numop:mul/foil/main

# refine guess unless o matches +/-100000000 (perfect guess)
execute if predicate numop:div_guess run scoreboard players add #s2 nummc.math 2
execute unless predicate numop:div_guess run function numop:sqrt/div/ref
scoreboard players operation #q nummc.math = #r nummc.math
function numop:mul/foil/main
