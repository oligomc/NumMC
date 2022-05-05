## NumMC by Oligo
# if k is 0 goto x, else goto y
execute if score #k nummc.math matches 785398163 run function numop:unit/out/pre/inter/pos
execute unless score #k nummc.math matches 785398163 run function numop:unit/out/pre/inter/neg
