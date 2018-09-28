#reset progress if status is 0 also reset the display by queing the machine for an display update
execute as @e[type=armor_stand,scores={rda.blockID=2,rda.progress=1..,rda.status=0}] run tag @s add rda.update-disp
execute as @e[type=armor_stand,scores={rda.blockID=2,rda.progress=1..,rda.status=0}] run scoreboard players set @s rda.progress 0

### Recipe Block Begin ###
#check what item is in there and set correct status
execute as @e[type=armor_stand,scores={rda.blockID=2,rda.progress=0}] positioned as @s if block ~ ~ ~ minecraft:dropper{Items: [{Slot: 0b, id: "minecraft:bedrock", Count: 1b}]} run scoreboard players set @s rda.status 1
#apply update display tag and increment progress counting (only if item coresponds with status)
execute as @e[type=armor_stand,scores={rda.blockID=2,rda.progress=0..49,rda.status=1}] positioned as @s if block ~ ~ ~ minecraft:dropper{Items: [{Slot: 0b, id: "minecraft:bedrock", Count: 1b}]} run tag @s add rda.update-disp
execute as @e[type=armor_stand,scores={rda.blockID=2,rda.progress=0..49,rda.status=1}] positioned as @s if block ~ ~ ~ minecraft:dropper{Items: [{Slot: 0b, id: "minecraft:bedrock", Count: 1b}]} run scoreboard players add @s rda.progress 1
#resets progress of processe to 0 in case they do not have the correct item inside them
execute as @e[type=armor_stand,scores={rda.blockID=2,rda.progress=1..,rda.status=1}] positioned as @s unless block ~ ~ ~ minecraft:dropper{Items: [{Slot: 0b, id: "minecraft:bedrock", Count: 1b}]} run scoreboard players set @s rda.status 0
#generates the output when the progress has been reached (progress will reset automatically because of a status mismatch, so there is no reason to reset it extra)
execute as @e[type=armor_stand,scores={rda.blockID=2,rda.progress=50,rda.status=1}] at @s run data merge block ~ ~ ~ {Items: [{Slot: 0b, id: "minecraft:glass", Count: 1b}]}
### Recipe Block End ###

### Recipe Block Begin ###
#check what item is in there and set correct status
execute as @e[type=armor_stand,scores={rda.blockID=2,rda.progress=0}] positioned as @s if block ~ ~ ~ minecraft:dropper{Items: [{Slot: 0b, id: "minecraft:stick", Count: 1b}]} run scoreboard players set @s rda.status 2
#apply update display tag and increment progress counting (only if item coresponds with status)
execute as @e[type=armor_stand,scores={rda.blockID=2,rda.progress=0..49,rda.status=2}] positioned as @s if block ~ ~ ~ minecraft:dropper{Items: [{Slot: 0b, id: "minecraft:stick", Count: 1b}]} run tag @s add rda.update-disp
execute as @e[type=armor_stand,scores={rda.blockID=2,rda.progress=0..49,rda.status=2}] positioned as @s if block ~ ~ ~ minecraft:dropper{Items: [{Slot: 0b, id: "minecraft:stick", Count: 1b}]} run scoreboard players add @s rda.progress 1
#resets progress of processe to 0 in case they do not have the correct item inside them
execute as @e[type=armor_stand,scores={rda.blockID=2,rda.progress=1..,rda.status=2}] positioned as @s unless block ~ ~ ~ minecraft:dropper{Items: [{Slot: 0b, id: "minecraft:stick", Count: 1b}]} run scoreboard players set @s rda.status 0
#generates the output when the progress has been reached (progress will reset automatically because of a status mismatch, so there is no reason to reset it extra)
execute as @e[type=armor_stand,scores={rda.blockID=2,rda.progress=50,rda.status=2}] at @s run data merge block ~ ~ ~ {Items: [{Slot: 0b, id: "minecraft:diamond", Count: 1b}]}
### Recipe Block End ###