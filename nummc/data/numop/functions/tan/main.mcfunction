## NumMC by Oligo
# calculate sin and cos
function numop:unit/main

# divide cos from sin
data modify storage num:io input set value [0.0d, 0.0d]
data modify storage num:io input[0] set from storage num:io output[1]
data modify storage num:io input[1] set from storage num:io output[0]
function numop:div/main
