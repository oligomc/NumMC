## NumMC by Oligo
scoreboard players operation #o nummc.math = #a nummc.math
scoreboard players operation #j nummc.math = #i nummc.math
execute unless score #o nummc.math matches -10000000..9999999 run function numop:mul/foil/scale/nest0
execute if score #o nummc.math matches -10000000..9999999 run function numop:mul/foil/scale/nest1
scoreboard players operation #o nummc.math += #j nummc.math
