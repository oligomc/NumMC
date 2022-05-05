## NumMC by Oligo
# get length of vector
execute store result score #len1 nummc.math run data get storage num:io input
scoreboard players remove #len1 nummc.math 2
data modify storage num:io temp.in set from storage num:io input
data modify storage num:io input set value []

# loop
data modify storage num:io input append from storage num:io temp.in[-1]
data modify storage num:io input append from storage num:io temp.in[0]
function numop:mul/main
data modify storage num:io temp.out append from storage num:io output
data remove storage num:io temp.in[0]
execute unless score #len1 nummc.math matches ..0 run function numop:scale/loop

# store input
data modify storage num:io output set from storage num:io temp.out
data remove storage num:io temp
