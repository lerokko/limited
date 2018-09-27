#calculate momentary damage dealt by players
execute as @a run scoreboard players operation @s rda.dmg_dealt = @s rda.dDealtTotal
execute as @a run scoreboard players operation @s rda.dmg_dealt -= @s rda.dDealtLast
execute as @a run scoreboard players operation @s rda.dDealtLast = @s rda.dDealtTotal
execute if entity @a[scores={rda.dmg_dealt=1..}] run function #minecraft:dealt_damage
execute if entity @a[scores={rda.dmg_dealt=..-1}] run say PLAYER DEALS NEGATIVE DAMAGE! ERROR CODE 00003

#calculce momentary damage taken by players
execute as @a run scoreboard players operation @s rda.dmg_taken = @s rda.dTakenTotal
execute as @a run scoreboard players operation @s rda.dmg_taken -= @s rda.dTakenLast
execute as @a run scoreboard players operation @s rda.dTakenLast = @s rda.dTakenTotal
execute if entity @a[scores={rda.dmg_taken=1..}] run function #minecraft:took_damage
execute if entity @a[scores={rda.dmg_taken=..-1}] run say PLAYER TOOK NEGATIVE DAMAGE! ERROR CODE 00004

#store XpLevel in rda.playerLevel
execute store result score @a rda.playerLevel run data get entity @s XpLevel

#store DeathTime in rda.playerLimbo
execute store result score @a rda.playerLimbo run data get entity @s DeathTime

#store DeathTime in rda.playerAir
execute store result score @a rda.playerAir run data get entity @s Air

#handle rda.dead and rda.despawned
execute as @a[tag=rda.respawned] run tag @s remove rda.respawned
execute as @a[scores={rda.playerLimbo=1},tag=!rda.dead] if score @s rda.playerDeaths < @s rda.counter run tag @s add rda.dead
execute if @p[tag=rda.dead] run function #minecraft:player_died
execute as @a[scores={rda.playerLimbo=1},tag=rda.dead] run scoreboard players set @s rda.counter = @s rda.playerDeaths
execute as @a[scores={rda.playerLimbo=0},tag=rda.dead] run tag @s add rda.respawned
execute if @p[tag=rda.respawned] run function #minecraft:player_respawned

#TODO
#AbsorptionAmount: 0.0f, FallDistance: 0.0f, foodSaturationLevel: 0.0f, Dimension: 0, Fire, HurtTime: 0s, food, custm jump, mob kills, snkea time, drop, time since last death
#tags
#Sleeping: 0b, OnGround: 1b