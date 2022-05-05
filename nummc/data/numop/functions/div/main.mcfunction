## NumMC by Oligo
# store inputs p and q
function numop:mul/store/main

# if q is 0, return undefined; else goto nest0
execute if predicate numop:mul_zero run function numop:div/zero
execute unless predicate numop:mul_zero run function numop:div/nest0
