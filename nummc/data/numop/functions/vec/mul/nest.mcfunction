## NumMC by Oligo
# add vectors
data modify storage num:io temp.in set from storage num:io input
data modify storage num:io temp.input set from storage num:io input
data modify storage num:io input set value []

# loop
data modify storage num:io input append from storage num:io temp.in[0][0]
data modify storage num:io input append from storage num:io temp.in[1][0]
function numop:mul/main
data modify storage num:io temp.out append from storage num:io output
data remove storage num:io temp.in[0][0]
data remove storage num:io temp.in[1][0]
scoreboard players remove #len1 nummc.math 1
execute unless score #len1 nummc.math matches ..0 run function numop:vec/mul/loop

# reset
data modify storage num:io input set from storage num:io temp.input
data modify storage num:io output set from storage num:io temp.out
data remove storage num:io temp
