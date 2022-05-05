## NumMC by Oligo
# if k is 0 goto x, else goto y
execute if score #k nummc.math matches 0 run function numop:unit/out/pre/axis/x
execute unless score #k nummc.math matches 0 run function numop:unit/out/pre/axis/y
