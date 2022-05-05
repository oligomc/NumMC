## NumMC by Oligo
# CORDIC loop
execute if score #k nummc.math matches 0.. run function numop:unit/loop/pos
execute if score #k nummc.math matches ..-1 run function numop:unit/loop/neg
execute unless score #i nummc.math matches ..0 run function numop:unit/loop/main
