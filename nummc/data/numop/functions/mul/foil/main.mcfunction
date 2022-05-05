## NumMC by Oligo
# store terms
execute store result score #a nummc.math store result score #b nummc.math run scoreboard players get #p nummc.math
execute store result score #c nummc.math store result score #d nummc.math run scoreboard players get #q nummc.math

# break each term into smaller power of 10
execute store result score #i nummc.math run scoreboard players operation #a nummc.math /= #m5 nummc.const
execute store result score #g nummc.math store result score #h nummc.math run scoreboard players operation #b nummc.math %= #m5 nummc.const
scoreboard players operation #c nummc.math /= #m5 nummc.const
execute store result score #e nummc.math store result score #f nummc.math run scoreboard players operation #d nummc.math %= #m5 nummc.const
scoreboard players operation #e nummc.math /= #m4 nummc.const
scoreboard players operation #f nummc.math %= #m4 nummc.const

# foil
scoreboard players operation #g nummc.math *= #e nummc.math
scoreboard players operation #g nummc.math *= #m3 nummc.const
scoreboard players operation #h nummc.math *= #f nummc.math
scoreboard players operation #h nummc.math /= #m1 nummc.const
scoreboard players operation #i nummc.math *= #d nummc.math
scoreboard players operation #b nummc.math *= #c nummc.math
execute store result score #o nummc.math run scoreboard players operation #a nummc.math *= #c nummc.math

# sum
scoreboard players operation #g nummc.math += #h nummc.math
scoreboard players operation #g nummc.math /= #m4 nummc.const
scoreboard players operation #i nummc.math += #b nummc.math
execute store result score #j nummc.math run scoreboard players operation #i nummc.math += #g nummc.math

# add o and j depending on magnitude of o (prevent reaching signed 32-bit integer ceiling)
execute unless score #o nummc.math matches -10000000..9999999 run function numop:mul/foil/nest0
execute if score #o nummc.math matches -10000000..9999999 run function numop:mul/foil/nest1
scoreboard players operation #o nummc.math += #j nummc.math

# if input is less than 9 digits, redo summation with scaled o and j terms
execute if score #o nummc.math matches -100000000..99999999 run function numop:mul/foil/scale/main
