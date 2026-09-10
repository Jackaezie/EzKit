#$say $(slot)
$item replace entity @p container.$(slot) from block $(coords) container.$(slot)
scoreboard players remove #count loop_count 1
execute store result storage temp:macro slot int 1 run scoreboard players get #count loop_count


execute if score #count loop_count matches 0.. run function ezkit:kitloop with storage temp:macro
