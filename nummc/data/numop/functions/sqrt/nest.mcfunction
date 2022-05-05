## NumMC by Oligo
# initial guess using distance between nearest powers (>= 2 sig figs)
# (see https://en.wikipedia.org/wiki/Methods_of_computing_square_roots#Arithmetic_estimates)
function numop:sqrt/pow/search/l0n0

# newton iteration (>= 4 sig figs): u = (s + (u / s)) / 2
# (see https://en.wikipedia.org/wiki/Methods_of_computing_square_roots#Babylonian_method)
scoreboard players operation #u nummc.math /= #s nummc.math
scoreboard players operation #u nummc.math *= #m1 nummc.const
scoreboard players operation #u nummc.math += #s nummc.math
scoreboard players operation #u nummc.math *= #m3half nummc.const

# second newton iteration (>= 8 sig figs)
scoreboard players operation #q nummc.math = #u nummc.math
function numop:sqrt/div/main
scoreboard players operation #o nummc.math += #u nummc.math
