if [[ $# == 2 ]]; then
	echo "Se mostrarán las siguientes operaciones entre los dos números ingresados por parámetro:"
	echo "Multiplicación: `expr $1 \* $2`"
	echo "Suma: `expr $1 + $2`"
	echo "Resta: `expr $1 - $2`"
	mayor=$(($1 > $2 ? $1 : $2))
	echo "Nro mayor: $mayor"
else
	echo "No se ingresó la cantidad de parámetros necesaria"
	echo "Cantidad necesaria: 2"
	echo "Se ingresaron: $#"; fi
