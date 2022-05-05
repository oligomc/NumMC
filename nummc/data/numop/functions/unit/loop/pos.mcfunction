## NumMC by Oligo
# matrix multiply
scoreboard players operation #e nummc.math /= #g nummc.math
scoreboard players operation #f nummc.math /= #g nummc.math
scoreboard players operation #a nummc.math -= #f nummc.math
execute store result score #f nummc.math run scoreboard players operation #b nummc.math += #e nummc.math
scoreboard players operation #e nummc.math = #a nummc.math

# update angle
execute store result score #h nummc.math run data get storage num:io ataninvpow2[0]
scoreboard players operation #k nummc.math -= #h nummc.math

# iterate
scoreboard players operation #g nummc.math *= #2 nummc.const
data remove storage num:io ataninvpow2[0]
scoreboard players remove #i nummc.math 1
