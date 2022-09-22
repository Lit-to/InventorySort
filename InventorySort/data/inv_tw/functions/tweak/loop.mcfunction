#> inv_tw:tweak/loop
data remove storage inv_tw:data inv.target
#本当はここすらループ処理にしてよかったんだけどね～
execute if score inv_c inv_tweaks matches 26 run data modify storage inv_tw:data inv.target set from storage inv_tw:data inv.list[26]
execute if score inv_c inv_tweaks matches 25 run data modify storage inv_tw:data inv.target set from storage inv_tw:data inv.list[25]
execute if score inv_c inv_tweaks matches 24 run data modify storage inv_tw:data inv.target set from storage inv_tw:data inv.list[24]
execute if score inv_c inv_tweaks matches 23 run data modify storage inv_tw:data inv.target set from storage inv_tw:data inv.list[23]
execute if score inv_c inv_tweaks matches 22 run data modify storage inv_tw:data inv.target set from storage inv_tw:data inv.list[22]
execute if score inv_c inv_tweaks matches 21 run data modify storage inv_tw:data inv.target set from storage inv_tw:data inv.list[21]
execute if score inv_c inv_tweaks matches 20 run data modify storage inv_tw:data inv.target set from storage inv_tw:data inv.list[20]
execute if score inv_c inv_tweaks matches 19 run data modify storage inv_tw:data inv.target set from storage inv_tw:data inv.list[19]
execute if score inv_c inv_tweaks matches 18 run data modify storage inv_tw:data inv.target set from storage inv_tw:data inv.list[18]
execute if score inv_c inv_tweaks matches 17 run data modify storage inv_tw:data inv.target set from storage inv_tw:data inv.list[17]
execute if score inv_c inv_tweaks matches 16 run data modify storage inv_tw:data inv.target set from storage inv_tw:data inv.list[16]
execute if score inv_c inv_tweaks matches 15 run data modify storage inv_tw:data inv.target set from storage inv_tw:data inv.list[15]
execute if score inv_c inv_tweaks matches 14 run data modify storage inv_tw:data inv.target set from storage inv_tw:data inv.list[14]
execute if score inv_c inv_tweaks matches 13 run data modify storage inv_tw:data inv.target set from storage inv_tw:data inv.list[13]
execute if score inv_c inv_tweaks matches 12 run data modify storage inv_tw:data inv.target set from storage inv_tw:data inv.list[12]
execute if score inv_c inv_tweaks matches 11 run data modify storage inv_tw:data inv.target set from storage inv_tw:data inv.list[11]
execute if score inv_c inv_tweaks matches 10 run data modify storage inv_tw:data inv.target set from storage inv_tw:data inv.list[10]
execute if score inv_c inv_tweaks matches 9 run data modify storage inv_tw:data inv.target set from storage inv_tw:data inv.list[9]
execute if score inv_c inv_tweaks matches 8 run data modify storage inv_tw:data inv.target set from storage inv_tw:data inv.list[8]
execute if score inv_c inv_tweaks matches 7 run data modify storage inv_tw:data inv.target set from storage inv_tw:data inv.list[7]
execute if score inv_c inv_tweaks matches 6 run data modify storage inv_tw:data inv.target set from storage inv_tw:data inv.list[6]
execute if score inv_c inv_tweaks matches 5 run data modify storage inv_tw:data inv.target set from storage inv_tw:data inv.list[5]
execute if score inv_c inv_tweaks matches 4 run data modify storage inv_tw:data inv.target set from storage inv_tw:data inv.list[4]
execute if score inv_c inv_tweaks matches 3 run data modify storage inv_tw:data inv.target set from storage inv_tw:data inv.list[3]
execute if score inv_c inv_tweaks matches 2 run data modify storage inv_tw:data inv.target set from storage inv_tw:data inv.list[2]
execute if score inv_c inv_tweaks matches 1 run data modify storage inv_tw:data inv.target set from storage inv_tw:data inv.list[1]
execute if score inv_c inv_tweaks matches 0 run data modify storage inv_tw:data inv.target set from storage inv_tw:data inv.list[0]

scoreboard players add inv_c inv_tweaks 1
function inv_tw:item/id
data modify storage inv_tw:data out.list prepend from storage inv_tw:data inv.target

execute if score inv_c inv_tweaks < inv_m inv_tweaks run function inv_tw:tweak/loop
