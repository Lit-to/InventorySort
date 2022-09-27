#> inv_tw:tweak/

scoreboard objectives add inv_tweaks dummy
data modify storage inv_tw:data out.list set value []
data modify storage inv_tw:data inv.list set value []

data modify storage inv_tw:data inv.list set from block ~ ~ ~ Items
execute store result score inv_m inv_tweaks run data get storage inv_tw:data inv.list
scoreboard players set inv_c inv_tweaks 0
execute if score inv_c inv_tweaks < inv_m inv_tweaks run function inv_tw:tweak/loop

function inv_tw:item/slot

data modify block ~ ~ ~ Items set from storage inv_tw:data out.list
scoreboard objectives remove inv_tweaks


