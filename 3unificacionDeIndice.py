import json

#Indice
with open('indice.json', 'r') as file1:
    json1 = json.load(file1)

with open('locators.json', 'r') as file2:
    json2 = json.load(file2)

def replace_locators(obj):
    for locator_index, locator in enumerate(obj["Locators"]):
        print(locator)
        for key, value in json2.items():
            if locator in value:
                obj["Locators"][locator_index] = {locator:value[locator]}

for item in json1:
    replace_locators(item)
    

with open('resultAdoFinal.json', 'w') as result_file:
    json.dump(json1, result_file, indent=4)
