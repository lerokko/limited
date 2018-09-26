say conroot

execute if entity @p[tag=!rda.setup] run function limited:setup_new_player

#function limited:naturalspawns

function limited:custom_objectives_tracking

execute if entity @e[tag=!rda.block,tag=!rda.protoblock,type=item_frame,nbt={Item: {tag: {rda.isBlock: 1b}}},limit=1] run function limited:blockcreation

#function limited:energytick

#function limited:liquidtick

#NATIVE RECIPES FOR THE RDA LEGACY CRAFTER are called via the #limited:crafting tag (called every 2 ticks)
#Other legacy recipes need to be registered under #minecraft:crafting (also called every 2 ticks)

function limited:genericblocktick

#TODO multiblock validation method(s)
