## NumMC by Oligo
# if both inputs are 0 goto lt1, else goto gt1
execute store result score #a nummc.math store result score #in nummc.math run data get storage num:io input[0]
execute store result score #b nummc.math run data get storage num:io input[1]
execute unless predicate numop:add_zero run function numop:sub/store/gt1
execute if predicate numop:add_zero run function numop:sub/store/lt1
