#
#called by limited:load using:
#execute if score $RDA rda.installed matches 0 run function limited:install
#

say INSTALLING
#scoreboards that are needed go here

#core objectives
scoreboard objectives add rda.version dummy
execute if entity @a[tag=rda.debug] run say Adding rda.version
scoreboard objectives add rda.minversion dummy
execute if entity @a[tag=rda.debug] run say Adding rda.minversion
scoreboard objectives add rda.maxversion dummy
execute if entity @a[tag=rda.debug] run say Adding rda.maxversion
scoreboard objectives add rda.adv_mode dummy
scoreboard players set $RDA rda.adv_mode 0
execute if entity @a[tag=rda.debug] run say Adding rda.adv_mode

#generic objectives
scoreboard objectives add rda.UUID dummy
scoreboard players set $RDA rda.UUID 1
execute if entity @a[tag=rda.debug] run say Adding rda.UUID
scoreboard objectives add rda.PlayerID dummy
scoreboard players set $RDA rda.PlayerID 1
execute if entity @a[tag=rda.debug] run say Adding rda.playerID
scoreboard objectives add rda.mobID dummy
scoreboard players set $RDA rda.mobID 1
execute if entity @a[tag=rda.debug] run say Adding rda.mobID
scoreboard objectives add rda.villagerID dummy
scoreboard players set $RDA rda.villagerID 1
execute if entity @a[tag=rda.debug] run say Adding rda.villagerID
scoreboard objectives add rda.blockID dummy
scoreboard players set $RDA rda.blockID 1
execute if entity @a[tag=rda.debug] run say Adding rda.blockID
scoreboard objectives add rda.energy dummy
execute if entity @a[tag=rda.debug] run say Adding rda.energy
scoreboard objectives add rda.e-buffer dummy
execute if entity @a[tag=rda.debug] run say Adding rda.e-buffer
scoreboard objectives add rda.e-max dummy
execute if entity @a[tag=rda.debug] run say Adding rda.e-max
scoreboard objectives add rda.e-calc dummy
execute if entity @a[tag=rda.debug] run say Adding rda.e-calc
scoreboard objectives add rda.fluid dummy
execute if entity @a[tag=rda.debug] run say Adding rda.fluid
scoreboard objectives add rda.fluidID dummy
scoreboard players set $RDA rda.fluidID 10
execute if entity @a[tag=rda.debug] run say Adding rda.fluidID
scoreboard objectives add rda.f-buffer dummy
execute if entity @a[tag=rda.debug] run say Adding rda.f-buffer
scoreboard objectives add rda.f-max dummy
execute if entity @a[tag=rda.debug] run say Adding rda.f-max
scoreboard objectives add rda.f-calc dummy
execute if entity @a[tag=rda.debug] run say Adding rda.f-calc
scoreboard objectives add rda.progress dummy
execute if entity @a[tag=rda.debug] run say Adding rda.progress
scoreboard objectives add rda.headID dummy
execute if entity @a[tag=rda.debug] run say Adding rda.headID
scoreboard objectives add rda.chestID dummy
execute if entity @a[tag=rda.debug] run say Adding rda.chestID
scoreboard objectives add rda.legID dummy
execute if entity @a[tag=rda.debug] run say Adding rda.legID
scoreboard objectives add rda.bootsID dummy
execute if entity @a[tag=rda.debug] run say Adding rda.bootsID
scoreboard objectives add rda.handID dummy
execute if entity @a[tag=rda.debug] run say Adding rda.handID
scoreboard objectives add rda.offhandID dummy
execute if entity @a[tag=rda.debug] run say Adding rda.offhandID
scoreboard objectives add rda.status dummy
execute if entity @a[tag=rda.debug] run say Adding rda.status
scoreboard objectives add rda.modulo dummy
execute if entity @a[tag=rda.debug] run say Adding rda.modulo
scoreboard objectives add rda.counter dummy
execute if entity @a[tag=rda.debug] run say Adding rda.counter
scoreboard objectives add rda.dmg_dealt dummy
execute if entity @a[tag=rda.debug] run say Adding rda.dmg_dealt
scoreboard objectives add rda.dDealtTotal minecraft.custom:minecraft.damage_dealt
execute if entity @a[tag=rda.debug] run say Adding rda.dDealtTotal
scoreboard objectives add rda.dDealtLast dummy
execute if entity @a[tag=rda.debug] run say Adding rda.dDealtLast
scoreboard objectives add rda.dmg_taken dummy
execute if entity @a[tag=rda.debug] run say Adding rda.dmg_taken
scoreboard objectives add rda.dTakenTotal minecraft.custom:minecraft.damage_taken
execute if entity @a[tag=rda.debug] run say Adding rda.dTakenTotal
scoreboard objectives add rda.dTakenLast dummy
execute if entity @a[tag=rda.debug] run say Adding rda.dTakenLast
scoreboard objectives add rda.playerLevel dummy
execute if entity @a[tag=rda.debug] run say Adding rda.playerLevel
scoreboard objectives add rda.playerHealth health
execute if entity @a[tag=rda.debug] run say Adding rda.playerHealth
scoreboard objectives add rda.xpPoints xp
execute if entity @a[tag=rda.debug] run say Adding rda.xpPoints
scoreboard objectives add rda.playerAir air
execute if entity @a[tag=rda.debug] run say Adding rda.playerAir
scoreboard objectives add rda.playerArmor armor
execute if entity @a[tag=rda.debug] run say Adding rda.playerArmor
scoreboard objectives add rda.playerDeaths minecraft.custom:minecraft.deaths
execute if entity @a[tag=rda.debug] run say Adding rda.playerDeaths
scoreboard objectives add rda.playerLimbo dummy
execute if entity @a[tag=rda.debug] run say Adding rda.playerLimbo

#Regisreting core Fluids
scoreboard players set #WATER rda.fluidID 1
scoreboard players set #LAVA rda.fluidID 2
scoreboard players set #ENDER rda.fluidID 3
scoreboard players set #XP rda.fluidID 4
scoreboard players set #SLIME rda.fluidID 6
scoreboard players set #MILK rda.fluidID 5

#Checking if scoreboards have been installed. Set here the VERSION of RDA
execute store success score $RDA rda.installed run scoreboard players set $RDA rda.version 0000001

#IF means true if rda.installed is 0 this means rda.version does not exist and this the installation failed.
execute if score $RDA rda.installed matches 0 run say INSTALLION FAILED ERROR CODE 00001

#UNLESS means false if rda.installed is 1 this means rda.verison does exist and thus the installation was successful.
execute unless score $RDA rda.installed matches 1 run say INSTALLATION SUCCESSFUL