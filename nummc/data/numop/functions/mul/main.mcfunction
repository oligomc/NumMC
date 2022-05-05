## NumMC by Oligo
# store inputs in p and q
function numop:mul/store/main

# if p or q is 0 return 0, else multiply p and q
execute if predicate numop:mul_zero run data modify storage num:io output set value 0.0d
execute unless predicate numop:mul_zero run function numop:mul/nest
