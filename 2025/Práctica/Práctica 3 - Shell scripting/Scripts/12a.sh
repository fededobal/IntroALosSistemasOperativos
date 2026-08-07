echo "Introduzca el primer nro:"
read n1
echo "Introduzca el segundo nro:"
read n2
echo "Ahora se mostrarán las siguientes operaciones entre los dos números ingresados:"
echo "Multiplicación: `expr $n1 \* $n2`"
echo "Suma: `expr $n1 + $n2`"
echo "Resta: `expr $n1 - $n2`"
mayor=$(($n1 > $n2 ? $n1 : $n2))
echo "Nro mayor: $mayor"
