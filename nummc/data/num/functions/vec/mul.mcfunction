## NumMC by Oligo
# sum
function numop:vec/mul/main

# print output
execute if data storage num:io {print:1b} run tellraw @a {"nbt":"output", "storage":"num:io", "color":"gold"}
