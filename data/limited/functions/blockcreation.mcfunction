#
#called by limited:conroot using:
#execute if entity @e[tag=!rda.block,tag=!rda.protoblock,type=item_frame,nbt={Item: {tag: {rda.isBlock: 1b}}},limit=1] run function limited:blockcreation
#

#say blockcreate
#Get the items blockID
tag @e[tag=!rda.block,tag=!rda.protoblock,type=item_frame,nbt={Item: {tag: {rda.isBlock: 1b}}}] add rda.protoblock
execute as @e[tag=rda.protoblock] store result score @s rda.blockID run data get entity @s Item.tag."rda.blockID"

#If block is invalid only this is executed
execute if entity @e[tag=rda.protoblock,scores={rda.blockID=0},limit=1] run say Failed to create block. Missing rda.blockID tag! The entities "rda.isBlock" tag has been removed to prevent further errors. ERROR CODE 00005
#TODO also put coordinates in chat of the errored block and maybe UUID
execute as @e[tag=rda.protoblock,scores={rda.blockID=0}] run data remove entity @s Item.tag."rda.isBlock"
tag @e[tag=rda.protoblock,scores={rda.blockID=0}] remove rda.protoblock

#Execute if protoblock is valid
execute at @e[type=item_frame,tag=rda.protoblock,nbt={Facing:0b}] run summon minecraft:armor_stand ~ ~-0.46875 ~ {Invulnerable:1b,NoGravity:1b,Small:1,NoBasePlate:1,DisabledSlots:2039583, Tags: ["rda.protoblock"]}
execute at @e[type=item_frame,tag=rda.protoblock,nbt={Facing:1b}] run summon minecraft:armor_stand ~ ~0.46875 ~ {Invulnerable:1b,NoGravity:1b,Small:1,NoBasePlate:1,DisabledSlots:2039583, Tags: ["rda.protoblock"]}
execute at @e[type=item_frame,tag=rda.protoblock,nbt={Facing:2b}] run summon minecraft:armor_stand ~ ~ ~-0.46875 {Invulnerable:1b,NoGravity:1b,Small:1,NoBasePlate:1,DisabledSlots:2039583, Tags: ["rda.protoblock"]}
execute at @e[type=item_frame,tag=rda.protoblock,nbt={Facing:3b}] run summon minecraft:armor_stand ~ ~ ~0.46875 {Invulnerable:1b,NoGravity:1b,Small:1,NoBasePlate:1,DisabledSlots:2039583, Tags: ["rda.protoblock"]}
execute at @e[type=item_frame,tag=rda.protoblock,nbt={Facing:4b}] run summon minecraft:armor_stand ~-0.46875 ~ ~ {Invulnerable:1b,NoGravity:1b,Small:1,NoBasePlate:1,DisabledSlots:2039583, Tags: ["rda.protoblock"]}
execute at @e[type=item_frame,tag=rda.protoblock,nbt={Facing:5b}] run summon minecraft:armor_stand ~0.46875 ~ ~ {Invulnerable:1b,NoGravity:1b,Small:1,NoBasePlate:1,DisabledSlots:2039583, Tags: ["rda.protoblock"]}

#TODO setting up a decent armostand which inherits the item frames scoreboards.
execute as @e[type=armor_stand,tag=rda.protoblock] run scoreboard players operation @s rda.blockID = @e[tag=rda.protoblock,type=item_frame,sort=nearest,limit=1] rda.blockID
execute as @e[type=armor_stand,tag=rda.protoblock] run scoreboard players operation @s rda.UUID = $RDA rda.UUID
execute as @e[type=armor_stand,tag=rda.protoblock] run scoreboard players add $RDA rda.UUID 1
#note to self: DO NOT KILL THE ITEM FRAME!! This is done after the #minecraft:blockcreation tag is called, so other datapacks can still read out infomation from the item when creating the machine

execute at @e[type=armor_stand,tag=rda.protoblock] run summon minecraft:item ~ ~ ~ {Item: {id: "minecraft:item_frame", Count: 1b},Motion: [0.0d, 0.0d, 0.0d]}
tag @e[type=item_frame,tag=rda.protoblock] add rda.protoframe
tag @e[type=item_frame,tag=rda.protoframe] remove rda.protoblock

#This tag calls the creation functions of all datapacks. Each datapack checks if the protoblock belongs to it.
function #minecraft:blockcreation

#Detects if any protoblocks were not assigned and throws error message
execute store success score $RDA rda.installed run tag @e[tag=rda.protoblock] add rda.bugged
execute if score $RDA rda.installed matches 1.. at @e[tag=rda.protoblock] run say Failed to finalize block. The affected entity has been tagged with rda.bugged. ERROR CODE 00006
execute if score $RDA rda.installed matches 1.. run tag @e[tag=rda.protoblock] remove rda.protoblock
scoreboard players set $RDA rda.installed 1
kill @e[type=item_frame,tag=rda.protoframe]

#TODO also make the function throw an error if the id is not 0 but still not assigend by any datapack. do the same as in error code 00005
