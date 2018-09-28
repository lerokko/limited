#say create crafter
#dont forget to add this to the #minecraft:blockcreation tag of this datapack
#setup machine specific properties
execute positioned as @e[type=armor_stand,tag=rda.protoblock,scores={rda.blockID=1}] run setblock ~ ~ ~ minecraft:dropper{CustomName: "{\"text\":\"Legacy Crafter\"}"}
tag @e[type=armor_stand,tag=rda.protoblock,scores={rda.blockID=1}] add rda.drop-destroy
#TODO give armostand custom gear with custom blockmodels


#removes the tag so that the entity gets recognized as finalized ie not deleted (if you do not do this here in this function the bloackcreation will throw an error. The rda.protoblock tag is used as an indicator to see if the rda.blockID is in use. If its not removed by any creation function the main will remove it instead to prevent corruption)
tag @e[type=armor_stand,tag=rda.protoblock,scores={rda.blockID=1}] remove rda.protoblock