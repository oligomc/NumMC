## NumMC by Oligo
# reset all previously loaded datapack assets
scoreboard objectives remove nummc.math
scoreboard objectives remove nummc.const
data remove storage num:io input
data remove storage num:io output
data remove storage num:io print
kill @e[x=-1,dx=2,y=-1,dy=2,z=-1,dz=2,type=marker,tag=nummc]
