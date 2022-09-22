#> inv_tw:item/slot
data modify storage math: in set value []
data modify storage math: in set from storage inv_tw:data out.list
function math:sort/ascend/
data modify storage inv_tw:data in.list set from storage math: out
###
data modify storage array_op: in.list set value []
data modify storage array_op: in.list set from storage inv_tw:data in.list
data modify storage array_op: in.subscript set value 0
scoreboard players set sort inv_tweaks 0
function array_op:open
function inv_tw:item/sort/slot
data modify storage array_op: out.back append from storage array_op: out.data
data modify storage inv_tw:data out.list set from storage array_op: out.back

