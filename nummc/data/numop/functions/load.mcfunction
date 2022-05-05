## NumMC by Oligo
# remove all previous datapack assets
function numop:reset

# initialize datapack assets
scoreboard objectives add nummc.math dummy {"text":"NumMC Math","color":"gold"}
scoreboard objectives add nummc.const dummy {"text":"NumMC Const","color":"gold"}
scoreboard players set #-1 nummc.const -1
scoreboard players set #2 nummc.const 2
scoreboard players set #m1 nummc.const 10
scoreboard players set #m2 nummc.const 100
scoreboard players set #m3 nummc.const 1000
scoreboard players set #m4 nummc.const 10000
scoreboard players set #m5 nummc.const 100000
scoreboard players set #m0half nummc.const 5
scoreboard players set #m3half nummc.const 5000
data merge storage num:io {input:0.0d, output: 0.0d, print: 0b}
summon marker 0.0 0.0 0.0 {Tags:["nummc"], CustomName:'{"text":"NumMC","color":"gold"}'}
