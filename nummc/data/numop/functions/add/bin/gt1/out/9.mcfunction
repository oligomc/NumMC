## NumMC by Oligo
execute store result score #p nummc.math run data get storage num:io input[0] 0.1
execute store result score #q nummc.math run data get storage num:io input[1] 0.1
execute store result storage num:io output double 10 run scoreboard players operation #p nummc.math += #q nummc.math
