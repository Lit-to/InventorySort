#> inv_tw:item/sort/slot

function inv_tw:item/sort/slot/
execute store result storage inv_tw:data inv.count byte 1 run scoreboard players get sort inv_tweaks
data modify storage array_op: out.data.Slot set from storage inv_tw:data inv.count
data remove storage array_op: out.data.weight

