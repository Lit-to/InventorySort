#> inv_tw:item/sort/loop

execute store result score get_a inv_tweaks run data get storage array_op: out.data.weight
execute store result score get_b inv_tweaks run data get storage array_op: out.front[0].weight
execute if score get_b inv_tweaks < get_a inv_tweaks run function inv_tw:item/sort/perm
#execute if score get_b inv_tweaks >= get_a inv_tweaks run function inv_tw:item/sort/merge
function array_op:open/next
#execute if data storage array_op: {out:{front:[]}} 
execute unless data storage array_op: {out:{front:[]}} run function inv_tw:item/sort/stack


