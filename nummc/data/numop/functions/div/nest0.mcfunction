## NumMC by Oligo
# if p == q, set o to 1; else calculate p * 1/q
execute if predicate numop:div_comp run function numop:div/comp
execute unless predicate numop:div_comp run function numop:div/nest1

# get magnitude of output by subtracting two input magnitudes (a*10^n / b*10^m = c*10^(n - m))
execute store result score #z nummc.math run scoreboard players operation #s1 nummc.math -= #s2 nummc.math

# store output based on calculated magnitude
function numop:mul/out/search/l0n0
