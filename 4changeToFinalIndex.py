import json

# Nombre del archivo JSON de entrada y salida
input_file = 'resultAdoFinal.json'
output_file = 'output_data.json'

# Leer el archivo JSON de entrada
with open(input_file, 'r') as file:
    initial_data = json.load(file)

# Procesar los datos para ajustar la estructura al nuevo formato
new_data = []
for item in initial_data:
    new_item = {
        "Title": item["Title"],
        "Content": item["Content"],
        "ApplicableTo": {
            "Keyword": item["Title"], #{item["URL"]}
            "URL": f"https://ot1-qae-web.usdc.roadnet.com/{item['PageOb']}",  # Agrega la URL correspondiente
            "Locators": item["Locators"],
            "Language": "Robot Framework"
        },
        "Locators": item["Locators"]
    }
    new_data.append(new_item)

# Escribir los datos ajustados en un nuevo archivo JSON
with open(output_file, 'w') as file:
    json.dump(new_data, file, indent=4)

print(f"Archivo JSON convertido creado: {output_file}")
