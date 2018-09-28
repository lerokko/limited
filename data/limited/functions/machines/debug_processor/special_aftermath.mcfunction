#say aftermath debug
#this function conatins the aftermath conditions for when a machine gets destroyed (usually item drop)
execute positioned as @e[type=armor_stand,tag=rda.removeblock,scores={rda.blockID=2}] run setblock ~ ~ ~ minecraft:air
execute at @e[type=armor_stand,tag=rda.removeblock,scores={rda.blockID=2}] run summon minecraft:tnt ~ ~ ~
function #minecraft:limited_machines_destruction
#removes the machine (usually kills the entity)
execute as @e[type=armor_stand,tag=rda.removeblock,scores={rda.blockID=2}] run kill @s