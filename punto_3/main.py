from controller import identificar_nombres_dominio

"""
Main que pregunta al usuario cual es el archivodel que desea identificar los nombre de dominio
El archivo debe encontrarse en formato .txt
Genera un programa en bucle infinito hasta recibir una interrupción por consola.
"""
if __name__ == "__main__":
    while True:
        nombre_archivo = input('Increse el nombre del archivo del que desea identificar los nombres de dominio, sin la extensión ".txt" (debe estar en el mismo directorio que este archivo): ')
        print("Dominios encontrados: " + identificar_nombres_dominio(nombre_archivo))


