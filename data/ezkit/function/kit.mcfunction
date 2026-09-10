scoreboard objectives add loop_count dummy
scoreboard players set #count loop_count 21

execute store result storage temp:macro slot int 1 run scoreboard players get #count loop_count
$data modify storage temp:macro coords set value "$(coords)"

clear @p

$item replace entity @p armor.head from block $(coords) container.22
$item replace entity @p armor.chest from block $(coords) container.23
$item replace entity @p armor.legs from block $(coords) container.24
$item replace entity @p armor.feet from block $(coords) container.25
$item replace entity @p weapon.offhand from block $(coords) container.26

function ezkit:kitloop with storage temp:macro

$tp @p $(tpto)
