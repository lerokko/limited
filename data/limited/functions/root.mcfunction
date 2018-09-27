#TODO Make this recursive

#Other packs can use this score to swap + with - and vice versa
execute unless score $RDA rda.status matches -1 run scoreboard players set $RDA rda.status -1

scoreboard players set $RDA rda.modulo 2
execute store result score $RDA rda.counter run time query gametime
scoreboard players operation $RDA rda.counter %= $RDA rda.modulo
execute if score $RDA rda.counter matches 0 run function #minecraft:tick2

scoreboard players set $RDA rda.modulo 3
execute store result score $RDA rda.counter run time query gametime
scoreboard players operation $RDA rda.counter %= $RDA rda.modulo
execute if score $RDA rda.counter matches 0 run function #minecraft:tick3

scoreboard players set $RDA rda.modulo 4
execute store result score $RDA rda.counter run time query gametime
scoreboard players operation $RDA rda.counter %= $RDA rda.modulo
execute if score $RDA rda.counter matches 0 run function #minecraft:tick4

scoreboard players set $RDA rda.modulo 5
execute store result score $RDA rda.counter run time query gametime
scoreboard players operation $RDA rda.counter %= $RDA rda.modulo
execute if score $RDA rda.counter matches 0 run function #minecraft:tick5

scoreboard players set $RDA rda.modulo 6
execute store result score $RDA rda.counter run time query gametime
scoreboard players operation $RDA rda.counter %= $RDA rda.modulo
execute if score $RDA rda.counter matches 0 run function #minecraft:tick6

scoreboard players set $RDA rda.modulo 8
execute store result score $RDA rda.counter run time query gametime
scoreboard players operation $RDA rda.counter %= $RDA rda.modulo
execute if score $RDA rda.counter matches 0 run function #minecraft:tick8

scoreboard players set $RDA rda.modulo 10
execute store result score $RDA rda.counter run time query gametime
scoreboard players operation $RDA rda.counter %= $RDA rda.modulo
execute if score $RDA rda.counter matches 0 run function #minecraft:tick10

scoreboard players set $RDA rda.modulo 12
execute store result score $RDA rda.counter run time query gametime
scoreboard players operation $RDA rda.counter %= $RDA rda.modulo
execute if score $RDA rda.counter matches 0 run function #minecraft:tick12

scoreboard players set $RDA rda.modulo 14
execute store result score $RDA rda.counter run time query gametime
scoreboard players operation $RDA rda.counter %= $RDA rda.modulo
execute if score $RDA rda.counter matches 0 run function #minecraft:tick14

scoreboard players set $RDA rda.modulo 16
execute store result score $RDA rda.counter run time query gametime
scoreboard players operation $RDA rda.counter %= $RDA rda.modulo
execute if score $RDA rda.counter matches 0 run function #minecraft:tick16

scoreboard players set $RDA rda.modulo 18
execute store result score $RDA rda.counter run time query gametime
scoreboard players operation $RDA rda.counter %= $RDA rda.modulo
execute if score $RDA rda.counter matches 0 run function #minecraft:tick18

scoreboard players set $RDA rda.modulo 20
execute store result score $RDA rda.counter run time query gametime
scoreboard players operation $RDA rda.counter %= $RDA rda.modulo
execute if score $RDA rda.counter matches 0 run function #minecraft:tick20

scoreboard players set $RDA rda.modulo 40
execute store result score $RDA rda.counter run time query gametime
scoreboard players operation $RDA rda.counter %= $RDA rda.modulo
execute if score $RDA rda.counter matches 0 run function #minecraft:tick40