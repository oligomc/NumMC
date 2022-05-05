## NumMC by Oligo
# minecraft handles negative scoreboard values by running a floor function (-10.0 -> -10, -10.1 -> -11) which can mess up calculations downstream
# e.g. if guess is -14285.0 and actual is -14285.7, minecraft will calculate -14286.0, which is an overestimation when it should be an underestimation, which will give poor value for 1/q
# I correct this behavior by adding positive 1 to a negative input unless it is divisible by 10 (-10.0 -> -10, -10.1 -> -10)
# it should be noted this correction may not fix all instances, however
scoreboard players operation #k nummc.math %= #m1 nummc.const
execute unless score #k nummc.math matches 0 run scoreboard players add #l nummc.math 1
