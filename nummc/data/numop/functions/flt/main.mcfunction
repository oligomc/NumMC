## NumMC by Oligo
# storing any numeric type in FallDistance will cast to float
data modify entity @s FallDistance set from storage num:io input
data modify storage num:io output set from entity @s FallDistance
