from controller import nuevo_orden_mundial

"""
Main que pregunta al usuario cual es la cadena que desea convertir, y retorna la cadena convertida
Genera un programa en bucle infinito hasta recibir una interrupción por consola.
"""
if __name__ == "__main__":
    while True:
        texto = input("Increse la cadena que desea convertir al nuevo orden mundial: ")
        print("Cadena convertida: " + nuevo_orden_mundial(texto))


