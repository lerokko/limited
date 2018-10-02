#
#called by limited:conroot using:
#execute if entity @p[tag=!rda.setup] run function limited:setup_new_player
#

execute as @p[tag=!rda.setup] run tag @s add rda.setting_up
execute as @p[tag=rda.setting_up] run scoreboard players operation @s rda.version = $RDA rda.version
execute as @p[tag=rda.setting_up] run scoreboard players operation @s rda.PlayerID = $RDA rda.PlayerID
execute as @p[tag=rda.setting_up] run scoreboard players add $RDA rda.PlayerID 1
execute as @p[tag=rda.setting_up] run scoreboard players add @s rda.energy 0
execute as @p[tag=rda.setting_up] run scoreboard players add @s rda.e-buffer 0
execute as @p[tag=rda.setting_up] run scoreboard players add @s rda.e-max 0
execute as @p[tag=rda.setting_up] run scoreboard players add @s rda.e-calc 0
execute as @p[tag=rda.setting_up] run scoreboard players add @s rda.fluid 0
execute as @p[tag=rda.setting_up] run scoreboard players add @s rda.fluidID 0
execute as @p[tag=rda.setting_up] run scoreboard players add @s rda.f-buffer 0
execute as @p[tag=rda.setting_up] run scoreboard players add @s rda.f-max 0
execute as @p[tag=rda.setting_up] run scoreboard players add @s rda.f-calc 0
execute as @p[tag=rda.setting_up] run scoreboard players add @s rda.headID 0
execute as @p[tag=rda.setting_up] run scoreboard players add @s rda.chestID 0
execute as @p[tag=rda.setting_up] run scoreboard players add @s rda.legID 0
execute as @p[tag=rda.setting_up] run scoreboard players add @s rda.bootsID 0
execute as @p[tag=rda.setting_up] run scoreboard players add @s rda.handID 0
execute as @p[tag=rda.setting_up] run scoreboard players add @s rda.offhandID 0
execute as @p[tag=rda.setting_up] run scoreboard players add @s rda.status 0
execute as @p[tag=rda.setting_up] run scoreboard players add @s rda.counter 0
execute as @p[tag=rda.setting_up] run scoreboard players add @s rda.dDealtLast 0
execute as @p[tag=rda.setting_up] run scoreboard players add @s rda.dTakenLast 0
execute if entity @a[tag=rda.debug] run say Setup core player values
execute as @p[tag=rda.setting_up] run function #minecraft:setup_new_player
execute if entity @a[tag=rda.debug] run say Setup core player values
execute as @p[tag=rda.setting_up] run tag @s add rda.setup
function #minecraft:setup_new_player
execute as @p[tag=rda.setting_up] run tag @s remove rda.setting_up
execute if entity @p[tag=!rda.setup] run function limited:setup_new_player