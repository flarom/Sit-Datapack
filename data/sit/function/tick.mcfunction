scoreboard players enable @a sit
execute as @a[tag=player.sitting] at @s if score @s sit matches 1.. if entity @s[nbt={OnGround:false}] run function sit:messages/sit_on_air
execute as @a[tag=player.sitting] at @s if score @s sit matches 1.. if entity @s[nbt={OnGround:false}] run scoreboard players set @s sit 0
execute as @a[tag=!player.sitting] at @s if score @s sit matches 1.. run function sit:sit
execute as @e[tag=sit.chair.sitting,type=item_display] unless function sit:detect_passenger run kill @s
execute as @a[tag=player.sitting] unless function sit:detect_vehicle run tag @s remove player.sitting
