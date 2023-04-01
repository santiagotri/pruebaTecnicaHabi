from controller import identificar_nombres_dominio

def test_identificar_nombres_dominio(archivo, esperada):
    assert identificar_nombres_dominio(archivo) == esperada, "Para el archivo " + archivo + ".txt se esperaba el resultado " + esperada + ". Se obtuvo " + identificar_nombres_dominio(archivo)

test_identificar_nombres_dominio('test1', 'No se encontraron coincidencias en el archivo')
test_identificar_nombres_dominio('test2', 'ads.facebook.com;google.com')
test_identificar_nombres_dominio('test3', 'ads.facebook.com;facebook.com;google.com')

print("Todas las pruebas pasaron correctamente!")
