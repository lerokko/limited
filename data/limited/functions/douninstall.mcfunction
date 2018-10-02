#
#called by limited:uninstall using:
#execute if score $RDA rda.adv_mode matches 1.. run function limited:douninstall
#

say UNINSTALLING
#core objectives
scoreboard objectives remove rda.version
scoreboard objectives remove rda.minversion
scoreboard objectives remove rda.maxversion

#generic objectives
scoreboard objectives remove rda.UUID
scoreboard objectives remove rda.PlayerID
scoreboard objectives remove rda.mobID
scoreboard objectives remove rda.villagerID
scoreboard objectives remove rda.blockID
scoreboard objectives remove rda.energy
scoreboard objectives remove rda.e-buffer
scoreboard objectives remove rda.e-max
scoreboard objectives remove rda.e-calc
scoreboard objectives remove rda.fluid
scoreboard objectives remove rda.fluidID
scoreboard objectives remove rda.f-buffer
scoreboard objectives remove rda.f-max
scoreboard objectives remove rda.f-calc
scoreboard objectives remove rda.progress
scoreboard objectives remove rda.headID
scoreboard objectives remove rda.chestID
scoreboard objectives remove rda.legID
scoreboard objectives remove rda.bootsID
scoreboard objectives remove rda.handID
scoreboard objectives remove rda.offhandID
scoreboard objectives remove rda.status
scoreboard objectives remove rda.modulo
scoreboard objectives remove rda.counter
scoreboard objectives remove rda.dmg_dealt
scoreboard objectives remove rda.dDealtTotal
scoreboard objectives remove rda.dDealtLast
scoreboard objectives remove rda.dmg_taken
scoreboard objectives remove rda.dTakenTotal
scoreboard objectives remove rda.dTakenLast
scoreboard objectives remove rda.playerLevel
scoreboard objectives remove rda.playerHealth
scoreboard objectives remove rda.xpPoints
scoreboard objectives remove rda.playerAir
scoreboard objectives remove rda.playerArmor
scoreboard objectives remove rda.playerDeaths
scoreboard objectives remove rda.playerLimbo

#Checking if scoreboards have been uninstalled. Set here the Version of RDA
execute store success score $RDA rda.installed run scoreboard players add $RDA rda.version 0

#IF means true if rda.installed is 0 this means rda.version does not exist and this the uninstallation failed.
execute if score $RDA rda.installed matches 0 run say UNINSTALLATION WAS SUCCESSFUL (/datapack enable "file/limited" to reinstall)

#UNLESS means false if rda.installed is 1 this means rda.verison does exist and thus the uninstallation was successful.
execute if score $RDA rda.installed matches 1 run say UNISTALLATION FAILED ERROR CODE 00002. Datapack disabled. Reenableing will result in reinstallation

scoreboard objectives remove rda.installed
#All dependant datapacks need to register their unistall function under this tag
execute if score $RDA rda.adv_mode matches 0 run function #minecraft:disable
scoreboard objectives remove rda.adv_mode
datapack disable "file/limited"