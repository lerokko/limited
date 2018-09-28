#TODO make this more flexible and map 0-100% to all progress durations. This is just a proof of concept
execute as @e[tag=rda.update-disp,type=armor_stand,scores={rda.progress=0}] run data merge entity @s {CustomName:"{\"text\":\"..........\",\"color\":\"green\"}"}
execute as @e[tag=rda.update-disp,type=armor_stand,scores={rda.progress=1..5}] run data merge entity @s {CustomName:"{\"text\":\"|.........\",\"color\":\"green\"}"}
execute as @e[tag=rda.update-disp,type=armor_stand,scores={rda.progress=6..10}] run data merge entity @s {CustomName:"{\"text\":\"||........\",\"color\":\"green\"}"}
execute as @e[tag=rda.update-disp,type=armor_stand,scores={rda.progress=11..15}] run data merge entity @s {CustomName:"{\"text\":\"|||.......\",\"color\":\"green\"}"}
execute as @e[tag=rda.update-disp,type=armor_stand,scores={rda.progress=16..20}] run data merge entity @s {CustomName:"{\"text\":\"||||......\",\"color\":\"green\"}"}
execute as @e[tag=rda.update-disp,type=armor_stand,scores={rda.progress=21..25}] run data merge entity @s {CustomName:"{\"text\":\"|||||.....\",\"color\":\"green\"}"}
execute as @e[tag=rda.update-disp,type=armor_stand,scores={rda.progress=26..30}] run data merge entity @s {CustomName:"{\"text\":\"||||||....\",\"color\":\"green\"}"}
execute as @e[tag=rda.update-disp,type=armor_stand,scores={rda.progress=31..35}] run data merge entity @s {CustomName:"{\"text\":\"|||||||...\",\"color\":\"green\"}"}
execute as @e[tag=rda.update-disp,type=armor_stand,scores={rda.progress=36..40}] run data merge entity @s {CustomName:"{\"text\":\"||||||||..\",\"color\":\"green\"}"}
execute as @e[tag=rda.update-disp,type=armor_stand,scores={rda.progress=41..45}] run data merge entity @s {CustomName:"{\"text\":\"|||||||||.\",\"color\":\"green\"}"}
execute as @e[tag=rda.update-disp,type=armor_stand,scores={rda.progress=46..50}] run data merge entity @s {CustomName:"{\"text\":\"||||||||||\",\"color\":\"green\"}"}

#after the update the tag is removed
tag @e[tag=rda.update-disp,type=armor_stand] remove rda.update-disp