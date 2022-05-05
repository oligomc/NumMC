## NumMC by Oligo
# add elementwise
data modify storage num:io input[0] set from storage num:io temp.in[0][0]
data modify storage num:io input[1] set from storage num:io temp.in[1][0]
function numop:mul/main
data modify storage num:io temp.out append from storage num:io output
data remove storage num:io temp.in[0][0]
data remove storage num:io temp.in[1][0]
scoreboard players remove #len1 nummc.math 1
execute unless score #len1 nummc.math matches ..0 run function numop:vec/mul/loop
