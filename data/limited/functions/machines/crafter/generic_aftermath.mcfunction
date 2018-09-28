#say aftermath debug
#this function conatins the aftermath conditions for when a machine gets destroyed (usually item drop)
execute at @e[type=armor_stand,tag=rda.removeblock,scores={rda.blockID=1}] run kill @e[type=item,distance=..0.45,nbt={Item: {id: "minecraft:dropper", Count: 1b}}]
execute at @e[type=armor_stand,tag=rda.removeblock,scores={rda.blockID=1}] run summon minecraft:item ~ ~ ~ {Item: {id: "minecraft:clock", Count: 1b, tag: {rda.isBlock: 1b, rda.blockID: 1s}}}
function #minecraft:limited_machines_destruction
#removes the machine (usually kills the entity)
execute as @e[type=armor_stand,tag=rda.removeblock,scores={rda.blockID=1}] run kill @s