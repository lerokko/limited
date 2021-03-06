#say destroy switch
#dont forget to add this to the #minecraft:specialblockdestruction tag of this datapack and or to the #minecraft:genericblockdestruction tag.

#checks if the macine no longer has valid blocks at its location
execute as @e[type=armor_stand,scores={rda.blockID=3}] positioned as @s unless block ~ ~ ~ minecraft:lever run tag @s add rda.removeblock
#in this case the aftermath conditions have been extracted and put into a different function to reduce the load (destruction functions are executed every tick and the aftermath function is only executed if this type of machine actually has been destroyed.) this is optional although usually recommended
#removes the machine (usually kills the entity)
execute at @e[type=armor_stand,tag=rda.removeblock,scores={rda.blockID=3}] run function limited:machines/switch/generic_aftermath