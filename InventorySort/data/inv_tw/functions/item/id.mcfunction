#> inv_tw:item/id
scoreboard players set id inv_tweaks 0
data modify storage array_op: in.subscript set value 0
data modify storage array_op: in.list set from storage inv_tw:item list
execute store result score max inv_tweaks run data get storage inv_tw:item list
data modify storage compare: A set value ""
data modify storage compare: B set value ""
data modify storage compare: A set from storage inv_tw:data inv.target.id
function array_op:open
####
function inv_tw:item/loop

