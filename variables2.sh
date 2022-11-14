#!/bin/bash
echo "esto es una prueba del script anterior: $nombre"
#operadores relacionales
num1=5
num2=2
echo -e "\nOperadores relacionales"
echo "Numeros: A=$num1 y B=$num2"
echo "A > B:" $((num1>$num2))
echo "A < B:" $((num1<$num2))
echo "A >= B:" $((num1>=$num2))
echo "A <= B:" $((num1<=$num2))
echo "A == B:" $((num1<=$num2))         
echo "A != B:" $((num1<=$num2))

echo -e "\nOperadores de asignación"
echo "suma A += B:" $((num1+=$num2))
echo "resta A -= B:" $((num1-=$num2))
echo "multiplicion A *= B:" $((num1*=$num2))
echo "división A /= B:" $((num1/=$num2))
echo "residuo A %= B:" $((num1%=$num2)) 

