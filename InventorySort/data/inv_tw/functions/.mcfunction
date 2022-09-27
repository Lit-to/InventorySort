#> inv_tw:

setblock 0 -64 0 shulker_box
data modify block 0 -64 0 Items set from block ~ ~ ~ Items 
data modify block ~ ~ ~ Items set value []
loot insert ~ ~ ~ mine 0 -64 0 minecraft:debug_stick
setblock 0 -64 0 bedrock
execute positioned ~ ~ ~ run function inv_tw:tweak/

#data modify entity @s ItemRotation set value 0b

#data remove storage inv_tw:data inv
#data remove storage inv_tw:data in
#data remove storage inv_tw:data out



