#> inv_tw:item/sort/stack

data modify storage inv_tw:data out.list prepend from storage array_op: out.data 
data remove storage array_op: out.data
data modify storage array_op: in.list set from storage array_op: out.back

function inv_tw:item/sort/loop



