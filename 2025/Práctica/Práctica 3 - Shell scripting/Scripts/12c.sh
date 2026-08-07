if [[ $# == 3 ]]; then
	if [[ $2 == "+" ]]; then
		echo $(( $1 + $3 ));
	elif [[ $2 == "-" ]]; then
		echo $(( $1 - $3 ));
	elif [[ $2 == "*" ]]; then
		echo $(( $1 * $3 ));
	elif [[ $2 == "%" ]]; then
		echo $(( $1 % $3 )); fi
else
	echo "No se ingresó la cantidad de parámetros necesaria"
	echo "Cantidad necesaria: 3"
	echo "Se ingresaron: $#"; fi
