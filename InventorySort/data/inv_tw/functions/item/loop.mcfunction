#> inv_tw:item/loop
execute if score id inv_tweaks matches 1.. run function array_op:open/next
scoreboard players add id inv_tweaks 1
data modify storage compare: B set from storage array_op: out.data
function array_op:compare
execute if data storage compare: {result:0} run function inv_tw:item/fin
execute if data storage compare: {result:1} if score id inv_tweaks matches 0.. if score id inv_tweaks <= max inv_tweaks run function inv_tw:item/loop

