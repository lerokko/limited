say creation
#setup machine specific properties
execute positioned as @e[type=armor_stand,tag=rda.protoblock,scores={rda.blockID=1}] run setblock ~ ~ ~ minecraft:dropper{CustomName: "{\"text\":\"Legacy Crafter\"}"}

#removes the tag so that the entity gets recognied as finalized ie not deleted
tag @e[tag=rda.protoblock] remove rda.protoblock