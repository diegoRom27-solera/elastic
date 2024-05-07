import os
import yaml
import json

def cargar_archivos_yml(directorio):
    archivos_yml = []
    for ruta, directorios, archivos in os.walk(directorio):
        for archivo in archivos:
            if archivo.endswith('.yaml') or archivo.endswith('.yml'):
                archivos_yml.append(os.path.join(ruta, archivo))
    return archivos_yml

def obtener_data_desde_yml(archivo_yml):
    try:
        with open(archivo_yml, 'r') as file:
            data = yaml.safe_load(file)
            return data
    except FileNotFoundError:
        print(f"El archivo {archivo_yml} no fue encontrado.")
        return None

def guardar_datos_en_json(datos, archivo_json):
    with open(archivo_json, 'w') as file:
        json.dump(datos, file, indent=4)

directorio_base = './TaxManager-robot-testSuite-main'  # Reemplaza '/ruta/del/directorio/base' con tu directorio base
archivos_encontrados = cargar_archivos_yml(directorio_base)

data_completa = {}
for archivo_yml in archivos_encontrados:
    data = obtener_data_desde_yml(archivo_yml)
    if data is not None:
        data_completa.update(data)  # Agrega los datos del archivo YAML directamente a data_completa
    else:
        print("Error al cargar el archivo YAML.")

archivo_json_salida = './datos_completos.json'  # Ruta donde se guardará el archivo JSON
guardar_datos_en_json(data_completa, archivo_json_salida)
print(f"Se han guardado los datos encontrados en '{archivo_json_salida}'.")
