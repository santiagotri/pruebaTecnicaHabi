from controller import nuevo_orden_mundial

def test_nuevo_orden_mundial(prueba, esperada):
    assert nuevo_orden_mundial(prueba) == esperada, "Para la cadena " + prueba + " se esperaba el resulado " + esperada

test_nuevo_orden_mundial('a7218BaACc', 'aacABC1728')
test_nuevo_orden_mundial('Sorting1234', 'ginortS1324')
test_nuevo_orden_mundial('Saaaorting1234a', 'aaaaginortS1324')
test_nuevo_orden_mundial('Sorting155234', 'ginortS135524')

print("Todas las pruebas pasaron correctamente!")
