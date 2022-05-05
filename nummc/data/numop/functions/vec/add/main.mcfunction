## NumMC by Oligo
# if lengths of vectors are same, goto nest, else return error
execute store result score #len1 nummc.math run data get storage num:io input[0]
execute store result score #len2 nummc.math run data get storage num:io input[1]
execute unless score #len1 nummc.math = #len2 nummc.math run data modify storage num:io output set value "undefined"
execute if score #len1 nummc.math = #len2 nummc.math run function numop:vec/add/nest
