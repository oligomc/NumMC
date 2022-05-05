## NumMC by Oligo
# store p. if p > 1 calculate sqrt, else goto store/main
execute store result score #in nummc.math run data get storage num:io input
execute unless score #in nummc.math matches -1..0 run function numop:inv/in/gt1/search/l0n0
execute if score #in nummc.math matches -1..0 run function numop:inv/store
