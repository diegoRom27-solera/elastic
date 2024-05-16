import json

input_file = 'resultAdoFinal.json'
output_file = 'output_data.json'

with open(input_file, 'r') as file:
    initial_data = json.load(file)

new_data = []
for item in initial_data:
    new_item = {
        "Title": item["Title"],
        "Content": item["Content"],
        "ApplicableTo": {
            "Keyword": item["Title"], #{item["URL"]}
            "URL": f"https://ot1-qae-web.usdc.roadnet.com/{item['PageOb']}",  
            "Locators": item["Locators"],
            "Language": "Robot Framework"
        },
    }
    new_data.append(new_item)

with open(output_file, 'w') as file:
    json.dump(new_data, file, indent=4)

print(f"Archivo JSON convertido creado: {output_file}")
