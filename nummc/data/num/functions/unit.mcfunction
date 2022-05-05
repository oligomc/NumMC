## NumMC by Oligo
# unit circle
execute as @e[x=0,dx=-1,y=0,dy=-1,z=0,dz=-1,type=marker,tag=nummc,limit=1] at @s run function numop:unit/main

# print output
execute if data storage num:io {print:1b} run tellraw @a {"nbt":"output", "storage":"num:io", "color":"gold"}
