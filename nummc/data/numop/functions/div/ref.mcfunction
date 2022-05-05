## NumMC by Oligo
# newton-raphson division to refine 1/q guess
# (see https://en.wikipedia.org/wiki/Division_algorithm#Newton%E2%80%93Raphson_division)
scoreboard players operation #m nummc.math -= #o nummc.math
scoreboard players operation #q nummc.math = #m nummc.math
function numop:mul/foil/main
scoreboard players operation #p nummc.math = #o nummc.math
scoreboard players add #s2 nummc.math 2
