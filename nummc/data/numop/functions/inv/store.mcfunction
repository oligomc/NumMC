## NumMC by Oligo
# scale input
execute store result score #in nummc.math run data get storage num:io input 1000000000
# cannot divide by 0
execute if score #in nummc.math matches -1..0 run data modify storage num:io output set value "undefined"
execute unless score #in nummc.math matches -1..0 run function numop:inv/in/lt1/search/l0n0
