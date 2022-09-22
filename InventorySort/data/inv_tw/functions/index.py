import os
import sys
import json
# direcotory
#os.chdir(r"C:\Users\yutak\Downloads\datapacks_3\ds2\in2\inventory_tweak\data\inv_tw\functions")
minecraft_tags = r"..\..\minecraft\tags\items\\"


def open_json(input_p):
    try:
        with open(input_p, mode="r", encoding="utf-8") as input_f:
            input_j = json.load(input_f)
    except FileNotFoundError:
        print(input_p+" is not found.")
        sys.exit()
    input_l = input_j["values"]
    input_l = list(input_l)
    input_l.insert(0,"##"+input_p)
    print("reading json file"+input_p)
    return input_l


# jsonファイルのパス
input_p = r"..\tags\items\input.json"

file_l = os.listdir(path=minecraft_tags)
output_p = "index.mcfunction"
command_pr = "data modify storage inv_tw:item list insert -1 value"
command_ap = ""
print("start command generator from json to mcfunction")
input_l = list()
for file_name in file_l:
    print("open json file"+file_name)
    input_l = input_l + open_json(minecraft_tags+file_name)

print("open json file "+input_p)
try:
    with open(input_p, mode="r", encoding="utf-8") as input_f:
        input_j = json.load(input_f)
except FileNotFoundError:
    print(input_p+" is not found.")
    sys.exit()

input_d = input_j["values"]
input_l = input_l+list(input_d)
input_l = list(dict.fromkeys(input_l))

print("reading json file")
output_l = list()
output_l.append("#> inv_tw:index")
output_l.append("#このコマンドはindex.pyによって作成されました。")
output_l.append("#")
for items in input_l:
    if items[0:8] == "##..\..\\":
        command = "#"+items[8:]
    elif items[0:1] == "#m":
        continue
    else:
        command = command_pr+" \""+items+"\" "+command_ap
    output_l.append(command)

print("exporting "+output_p)

output_s = ""
for oneline in output_l:
    output_s = output_s+oneline+"\n"

with open(output_p, mode="w", encoding="utf-8") as output_f:
    output_f.write(output_s)
print("Fin.")
sys.exit()
