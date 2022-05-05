## NumMC by Oligo
# if q is 0 return undefined, else return 0 (because p is 0)
data modify storage num:io output set value 0.0
execute if score #q nummc.math matches -1..0 run data modify storage num:io output set value "undefined"
