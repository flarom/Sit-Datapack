summon item_display ~ ~ ~ {Tags:["sit.chair"]}
ride @s mount @n[tag=sit.chair,tag=!sit.chair.sitting,type=item_display]
tag @s add player.sitting
scoreboard players set @s sit 0
execute on vehicle run tag @s add sit.chair.sitting