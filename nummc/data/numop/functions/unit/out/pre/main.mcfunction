## NumMC by Oligo
# if angle is 0 or -90 goto axis, else goto inter
execute if predicate numop:unit_axis run function numop:unit/out/pre/axis/main
execute unless predicate numop:unit_axis run function numop:unit/out/pre/inter/main
