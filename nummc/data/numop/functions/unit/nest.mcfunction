## NumMC by Oligo
# setup
execute store result score #f nummc.math run scoreboard players set #b nummc.math 0
execute store result score #e nummc.math run scoreboard players set #a nummc.math 1000000000
scoreboard players set #g nummc.math 1
scoreboard players set #i nummc.math 30
data merge storage num:io {output:[0.0d, 0.0d], ataninvpow2:[785398163,463647609,244978663,124354994,62418810,31239833,15623728,7812341,3906230,1953122,976562,488281,244140,122070,61035,30517,15258,7629,3814,1907,953,476,238,119,59,29,14,7,3,1]}

# CORDIC algorithm
# (see https://en.wikipedia.org/wiki/CORDIC#Modes_of_operation)
function numop:unit/loop/main

# if entity needed to be turned, correct properly
execute if score #j nummc.math matches 1 run function numop:unit/out/turn
execute unless score #j nummc.math matches 1 run function numop:unit/out/noturn

# reset
data remove storage num:io ataninvpow2
