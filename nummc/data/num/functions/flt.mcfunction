## NumMC by Oligo
# to float
execute as @e[x=-1,dx=2,y=-1,dy=2,z=-1,dz=2,type=marker,tag=nummc] run function numop:flt/main

# print output
execute if data storage num:io {print:1b} run tellraw @a {"nbt":"output", "storage":"num:io", "color":"gold"}
