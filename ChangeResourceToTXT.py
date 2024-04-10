import os
import json

directorio_p = './TaxManager-robot-testSuite-main'
archivo_json = 'result.json'

objetos = []

def obtener_archivos_repo(directorio):
    archivos_repo = []
    for root, dirs, files in os.walk(directorio):
        for file in files:
            if file.endswith('.resource'):
                archivos_repo.append(os.path.join(root, file))
    return archivos_repo

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
                    formatted_code = '\n'.join(code)
                    objetos.append({'KeywordName': key, 'KeywordCode': formatted_code, 'PageObject': nombre_archivo})
                    key = ''
                    code = []
            else:
                if not key:
                    key = line
                else:
                    parts = line.split(':')
                    if len(parts) == 2:
                        key = parts[0].strip()
                        value = parts[1].strip()
                        code.append(f"{key}: {value}")
                    else:
                        code.append(line)

with open(archivo_json, 'w') as json_file:
    json.dump(objetos, json_file)

for obj in objetos:
    print(f"Key: {obj['KeywordName']}\nCode:\n{obj['KeywordCode']}\nFilename: {obj['PageObject']}\n")
