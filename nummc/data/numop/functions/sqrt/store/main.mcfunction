## NumMC by Oligo
# if input is 0 goto store/nest, else return undefined
execute unless score #in nummc.math matches 0 run data modify storage num:io output set value "undefined"
execute if score #in nummc.math matches 0 run function numop:sqrt/store/nest
