## NumMC by Oligo
# setup
scoreboard players set #q nummc.math 1000000000
scoreboard players set #v nummc.math 1500000000

# sqrt guess using difference between nearest powers (same as num:sqrt)
function numop:invsqrt/pow/search/l0n0

# sqrt newton iteration: u = (s + (u / s)) / 2 (same as num:sqrt)
scoreboard players operation #u nummc.math /= #s nummc.math
scoreboard players operation #u nummc.math *= #m1 nummc.const
scoreboard players operation #u nummc.math += #s nummc.math
scoreboard players operation #u nummc.math /= #2 nummc.const

# inv sqrt guess by taking inverse of sqrt guess (>= 3 sig figs)
execute store result score #w nummc.math run scoreboard players operation #q nummc.math /= #u nummc.math
scoreboard players operation #w nummc.math *= #m4 nummc.const

# inv sqrt newton iteration: w * (v - (p / 2 * q * q)) (>= 7 sig figs)
# (see https://en.wikipedia.org/wiki/Methods_of_computing_square_roots#Iterative_methods_for_reciprocal_square_roots)
scoreboard players operation #q nummc.math *= #q nummc.math
function numop:mul/foil/main
scoreboard players operation #o nummc.math /= #2 nummc.const
# if o is not 10E9, multiply by 10 before performing foil multiplication
execute unless score #o nummc.math matches 100000000.. run scoreboard players operation #o nummc.math *= #m1 nummc.const
execute store result score #p nummc.math run scoreboard players operation #v nummc.math -= #o nummc.math
scoreboard players operation #q nummc.math = #w nummc.math
function numop:mul/foil/main
