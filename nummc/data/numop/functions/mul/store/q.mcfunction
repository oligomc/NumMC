## NumMC by Oligo
# if input is 0 after scaling set q to 0, else find magnitude using binary tree and store to 10^8
execute store result score #in nummc.math run data get storage num:io input[1] 1000000000
execute if score #in nummc.math matches -1..0 run scoreboard players set #q nummc.math 0
execute unless score #in nummc.math matches -1..0 run function numop:mul/in/q/lt1/search/l0n0
