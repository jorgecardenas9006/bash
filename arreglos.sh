# ! /bin/bash
# Programa para ejemplificar el uso de los arreglos
# Autor: Marco Toscano Freire - @martosfre

arregloNumeros=(1 2 3 4 5 6)
arregloCadenas=(Marco, Antonio, Pedro, Susana)
arregloRangos=({A..Z} {10..20})

#Imprimir todos los valores
echo "Arreglo de Numeros: ${arregloNumeros[*]}"
echo "Arreglo de Cadenas: ${arregloCadenas[*]}"
echo "Arreglo de Rangos: ${arregloRangos[*]}"

#Imprimir los tamaños de los arreglos
echo "Tamaño Arreglo de Numeros: ${#arregloNumeros[*]}"
echo "Tamaño Arreglo de Cadenas: ${#arregloCadenas[*]}"
echo "Tamaño Arreglo de Rangos: ${#arregloRangos[*]}"

#Imprimir la posición 3 del arreglo de nÃºmeros, cadenas de rango
echo "Posición 3 Arreglo de Numeros: ${arregloNumeros[3]}"
echo "Posición 3 Arreglo de Cadenas: ${arregloCadenas[3]}"
echo "Posición 3 Arreglo de Rangos: ${arregloRangos[3]}"

#AÃ±adir y eliminar valores en un arreglo
arregloNumeros[7]=20
unset arregloNumeros[0]
echo "Arreglo de Numeros: ${arregloNumeros[*]}"
echo "Tamaño arreglo de Numeros: ${#arregloNumeros[*]}"