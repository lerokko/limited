#say create debug
#dont forget to add this to the #minecraft:blockcreation tag of this datapack
#setup machine specific properties
execute positioned as @e[type=armor_stand,tag=rda.protoblock,scores={rda.blockID=2}] run setblock ~ ~ ~ minecraft:dropper{CustomName: "{\"text\":\"Debug Processor\"}"}
#TODO give armostand custom gear with custom blockmodels
scoreboard players set @e[type=armor_stand,tag=rda.protoblock,scores={rda.blockID=2}] rda.progress 0
scoreboard players set @e[type=armor_stand,tag=rda.protoblock,scores={rda.blockID=2}] rda.status 0
tag @e[type=armor_stand,tag=rda.protoblock,scores={rda.blockID=2}] add rda.drop-destroy

#removes the tag so that the entity gets recognized as finalized ie not deleted (if you do not do this here in this function the bloackcreation will throw an error. The rda.protoblock tag is used as an indicator to see if the rda.blockID is in use. If its not removed by any creation function the main will remove it instead to prevent corruption)
tag @e[type=armor_stand,tag=rda.protoblock,scores={rda.blockID=2}] remove rda.protoblock