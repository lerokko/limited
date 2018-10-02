#say create debug
#dont forget to add this to the #minecraft:blockcreation tag of this datapack
#setup machine specific properties
execute at @e[type=item_frame,tag=rda.protoframe,nbt={Facing:0b},scores={rda.blockID=3}] run setblock ~ ~ ~ minecraft:lever[face=ceiling,facing=west,powered=false]
execute at @e[type=item_frame,tag=rda.protoframe,nbt={Facing:1b},scores={rda.blockID=3}] run setblock ~ ~ ~ minecraft:lever[face=floor,facing=west,powered=false]
execute at @e[type=item_frame,tag=rda.protoframe,nbt={Facing:2b},scores={rda.blockID=3}] run setblock ~ ~ ~ minecraft:lever[face=wall,facing=north,powered=false]
execute at @e[type=item_frame,tag=rda.protoframe,nbt={Facing:3b},scores={rda.blockID=3}] run setblock ~ ~ ~ minecraft:lever[face=wall,facing=south,powered=false]
execute at @e[type=item_frame,tag=rda.protoframe,nbt={Facing:4b},scores={rda.blockID=3}] run setblock ~ ~ ~ minecraft:lever[face=wall,facing=west,powered=false]
execute at @e[type=item_frame,tag=rda.protoframe,nbt={Facing:5b},scores={rda.blockID=3}] run setblock ~ ~ ~ minecraft:lever[face=wall,facing=east,powered=false]

execute as @e[type=armor_stand,tag=rda.protoblock,scores={rda.blockID=3}] run data merge entity @s {Marker:1b,Invisible:1b}
#TODO give armostand custom gear with custom blockmodels
scoreboard players set @e[type=armor_stand,tag=rda.protoblock,scores={rda.blockID=3}] rda.progress 0
scoreboard players set @e[type=armor_stand,tag=rda.protoblock,scores={rda.blockID=3}] rda.status 0

#removes the tag so that the entity gets recognized as finalized ie not deleted (if you do not do this here in this function the bloackcreation will throw an error. The rda.protoblock tag is used as an indicator to see if the rda.blockID is in use. If its not removed by any creation function the main will remove it instead to prevent corruption)
tag @e[type=armor_stand,tag=rda.protoblock,scores={rda.blockID=3}] remove rda.protoblock