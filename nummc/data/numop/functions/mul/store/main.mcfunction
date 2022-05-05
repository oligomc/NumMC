## NumMC by Oligo
# store input[0] in p scaled to 10^8 using binary tree
execute store result score #in nummc.math run data get storage num:io input[0]
execute unless score #in nummc.math matches -1..0 run function numop:mul/in/p/gt1/search/l0n0
execute if score #in nummc.math matches -1..0 run function numop:mul/store/p
execute if score #p nummc.math matches ..-1000000000 run function numop:mul/in/p/adj

# same for input[1] in q
execute store result score #in nummc.math run data get storage num:io input[1]
execute unless score #in nummc.math matches -1..0 run function numop:mul/in/q/gt1/search/l0n0
execute if score #in nummc.math matches -1..0 run function numop:mul/store/q
execute if score #q nummc.math matches ..-1000000000 run function numop:mul/in/q/adj
