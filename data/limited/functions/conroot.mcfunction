
#rda.setup is used to mark player that have been setup correctly. If your function is at some point called by the limited:conroot function you do not need to use @p[tag=rda.setup] to target all players @p is enough because the limited:setup_new_player function runs before everything else and all players should have the rda.setup tag at that point. If you function is called via #minecraft:tick or #minecraft:tickXX its recommended to use @p[tag=rda.setup]. If you call you function via #minecraft:playertick its also suffcient to use only @p aqs it is always called after limited:setup_new_player (every tick).

execute if entity @p[tag=!rda.setup] run function limited:setup_new_player

execute if entity @p run function #minecraft:playertick

#function limited:naturalspawns

execute if entity @p run function limited:custom_objectives_tracking

#blockcreation is called if a protoblock is detected
execute if entity @e[tag=!rda.block,tag=!rda.protoblock,type=item_frame,nbt={Item: {tag: {rda.isBlock: 1b}}},limit=1] run function limited:blockcreation

#function limited:energytick

#function limited:liquidtick

#NATIVE RECIPES FOR THE RDA LEGACY CRAFTER are called via the #limited:crafting tag (called every 2 ticks)
#Other legacy recipes need to be registered under #minecraft:crafting (also called every 2 ticks)

function limited:genericblocktick

#the display needs to be updated after the machines have been updated (ticked)
execute if entity @e[tag=rda.update-disp,type=armor_stand,limit=1] run function limited:updatedisplay

#TODO multiblock validation method(s)
