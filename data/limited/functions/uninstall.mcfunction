say uninstall
execute if score $RDA rda.adv_mode matches 0 run say Uninstalling RDA will disable all dependencies. Switch RDA to advanced mode to disable this. Confirm
execute if score $RDA rda.adv_mode matches 1.. run function limited:douninstall