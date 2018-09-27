#say destroy crafter
#dont forget to add this to the #minecraft:blockdestruction tag of this datapack
#checks if the macine no longer has valid blocks at its location
execute as @e[type=armor_stand,scores={rda.blockID=1}] positioned as @s unless block ~ ~ ~ minecraft:dropper run tag @s add rda.removeblock

#creates the aftermath conditions (usually item drop)
execute at @e[type=armor_stand,tag=rda.removeblock,scores={rda.blockID=1}] run kill @e[type=item,distance=..0.45,nbt={Item: {id: "minecraft:dropper", Count: 1b}}]
execute at @e[type=armor_stand,tag=rda.removeblock,scores={rda.blockID=1}] run summon minecraft:item ~ ~ ~ {Item: {id: "minecraft:clock", Count: 1b, tag: {rda.isBlock: 1b, rda.blockID: 1s}}}

#removes the machine (usually kills the entity)
execute as @e[type=armor_stand,tag=rda.removeblock,scores={rda.blockID=1}] run kill @s
