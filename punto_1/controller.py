from re import findall

"""
Función que recibe una cadena S. 
Ordenar la cadena S de la siguiente manera:
    - Todas las letras minusculas ordenadas estan por delante de las mayusculas.
    - Todas las letras mayusculas ordenadas estan por delante de los dıgitos.
    - Todos los dıgitos impares ordenados estan por delante de los dıgitos pares ordenados.
"""
def nuevo_orden_mundial (texto:str):
    #Buscamos los caracteres impares y los organizamos
    impares = findall('[13579]', texto)
    impares.sort()
    # Buscamos los caracteres pares y los organizamos
    pares = findall('[02468]', texto)
    pares.sort()
    # Buscamos los caracteres en minusculas y los organizamos
    minusculas = findall('[a-z]', texto)
    minusculas.sort()
    # Buscamos los caracteres en mayusculas y los organizamos
    mayusculas = findall('[A-Z]', texto)
    mayusculas.sort()
    #''.join() realiza junta '' y cada elemento de la lista por parametro, retorna un solo string
    return ''.join(minusculas) + ''.join(mayusculas) + ''.join(impares) + ''.join(pares)
