from re import findall

"""
Función que recibe el nombre de un archivo *.txt en el mismo directorio, que contiene fragmento de marcado HTML
Identifica los nombres de dominio unicos de los enlaces o Urls que estan presentes en el fragmento de marcado.
Ejemplo:
    - Si el enlace http://www.habi.co/contacto esta presente en el marcado, debe detectar el dominio: habi.co. 
En caso de que haya dominios de segundo nivel o de nivel superior presentes en el marcado, todos ellos seran tratados como unicos.
"""
def identificar_nombres_dominio(nombre_archivo: str):
    lista = []
    rta = []
    try:
        archivo = open(nombre_archivo + ".txt")
    except:
        #Excepcion que se ejecuta en caso que la funcion open arroje error
        return 'No es posible abrir el archivo "' + nombre_archivo + '.txt"' + '. Asegurese que el nombre sea correcto y se encuentre en el mismo directorio que este archivo. '
    try:
        cant_lineas = int(archivo.readline())
        while cant_lineas > 0:
            cant_lineas -= 1
            lista.extend(findall('https?:\/\/[^/]+',archivo.readline()))
            #Utilizamos regex para buscar links con protocolo http(s) y guardamos solamente la parte del dominio (hasta el primer '/' despues del http://).
    except:
        # Excepcion que se ejecuta en caso que haya existido un error con el formato del archivo introducido.
        return "Existio un error al leer el archivo, porfavor verifique el formato del mismo"
    archivo.close()
    for i in lista:
        # Dentro de este for eliminamos todos los antecesores innecesarios del link: 'https://', 'http://' y 'www.'
        # Los guardamos en la lista rta cuando estén limpios
        item = i.lstrip('https://')
        item = item.lstrip('http://')
        item = item.lstrip('www.')
        rta.append(item)
    rta = list(dict.fromkeys(rta))  # Elimina los duplicados de la lista utilizando la estructura de diccionarios
    rta.sort()  # Organiza los elementos alfabeticamente
    return ";".join(rta) if len(rta)>0 else "No se encontraron coincidencias en el archivo"
