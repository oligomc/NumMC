## NumMC by Oligo
# if p == q return 1, else return -1
execute if score #p nummc.math = #q nummc.math run scoreboard players set #o nummc.math 100000000
execute unless score #p nummc.math = #q nummc.math run scoreboard players set #o nummc.math -100000000
