import os
import json
import re

directorio_p = './automation-superbarlauncher-robot-main'
archivo_json = 'indice.json'

objetos = []

def obtener_archivos_repo(directorio):
    archivos_repo = []
    for root, dirs, files in os.walk(directorio):
        for file in files:
            if file.endswith('.resource'):
                archivos_repo.append(os.path.join(root, file))
    return archivos_repo

def obtener_locators(linea):
    locators = re.findall(r'\${[^.]*\.([^{}]*)}', linea)
    return locators

archivos_repo = obtener_archivos_repo(directorio_p)

for archivos_txt in archivos_repo:
    nombre_archivo = os.path.splitext(os.path.basename(archivos_txt))[0]

    with open(archivos_txt, 'r') as file:
        lines = file.readlines()
        key = ''
        code = []

        for line in lines:
            line = line.strip()
            if not line:
                if key and code:
                    formatted_code = ' '.join(code)
                    locators = obtener_locators(formatted_code)
                    objetos.append({'Title': key, 'Content': formatted_code, 'ApplicableTo': key,'Locators': locators, "PageOb":nombre_archivo})
                    key = ''
                    code = []
            else:
                if not key:
                    key = line
                    code.append(f"{key} \n")
                else:
                    parts = line.split(':')
                    if len(parts) == 2:
                        key = parts[0].strip()
                        value = parts[1].strip()
                        code.append(f"{value}")
                    else:
                        code.append(f"'{line}'")

with open(archivo_json, 'w') as json_file:
    json.dump(objetos, json_file)

for obj in objetos:
    print(f"Title: {obj['Title']}\nContent:\n{obj['Content']}\nApplicableTo: {obj['ApplicableTo']}\nLocators: {obj['Locators']}\n")
