say loaded
#Unavoidable running of these to to initialize install check
scoreboard objectives add rda.installed dummy

#Checking if scoreboards have been installed. The command will fail the first time and this will trigger the installation. This returns 1 if the scorebard exists and 0 if it doesn't
execute store success score $RDA rda.installed run scoreboard players add $RDA rda.version 0

#Runnig install function in case rda.version could not be found
execute if score $RDA rda.installed matches 0 run function limited:install

#not Runnig install function
execute if score $RDA rda.installed matches 1 run say Limited v1 installed.