## NumMC by Oligo
# multiply using distributive property
function numop:mul/foil/main

# get magnitude of output by adding two input magnitudes (a*10^n * b*10^m = c*10^(n + m))
execute store result score #z nummc.math run scoreboard players operation #s1 nummc.math += #s2 nummc.math

# store output based on calculated magnitude
function numop:mul/out/search/l0n0
