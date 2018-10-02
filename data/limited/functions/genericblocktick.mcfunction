#
#called by limited:conroot using:
#function limited:genericblocktick
#

#calls functions to check if a block needs to be disassembled
execute as @e[type=armor_stand,tag=rda.drop-destroy] positioned as @s unless block ~ ~ ~ minecraft:dropper run tag @s add rda.removeblock
execute as @e[type=armor_stand,tag=rda.disp-destroy] positioned as @s unless block ~ ~ ~ minecraft:dispenser run tag @s add rda.removeblock
execute as @e[type=armor_stand,tag=rda.hopp-destroy] positioned as @s unless block ~ ~ ~ minecraft:hopper run tag @s add rda.removeblock
execute as @e[type=armor_stand,tag=rda.furn-destroy] positioned as @s unless block ~ ~ ~ minecraft:furnace run tag @s add rda.removeblock
execute if entity @e[type=armor_stand,tag=rda.removeblock] run function #minecraft:genericblockdestruction
#TODO Catch exception for not properly deleting a block via generic destruction

#for special block destruction the destrction condition is evaluated inside the destruction functions
function #minecraft:specialblockdestruction
#TODO Catch exception for not properly deleting a block via special destruction

#calls functions for datpacks to tick their blocks
function #minecraft:genericblocktick